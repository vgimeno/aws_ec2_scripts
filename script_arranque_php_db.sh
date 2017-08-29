#!/bin/bash
yum install httpd php php-mysql -y
yum update -y
chkconfig httpd on
service httpd start
echo "<?php phpinfo(); ?>" > /var/www/html/index.php
cd /var/www/html


aws s3 cp s3://cap34.acloudguru.autoweb/index.html /var/www/html