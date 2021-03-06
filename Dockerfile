#### run cmd  docker run -it -p 9000:9000 -v d:/docker/data:/data --name yzf -d joonsuk/appserver
######## /usr/sbin/init
FROM centos:7

RUN yum update -y \
    && rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
    && rpm -ivh https://rpms.remirepo.net/enterprise/remi-release-7.rpm \
    && yum install net-tools php72 php72-php-bcmath php72-php-gd php72-php-intl \
    php72-php-json php72-php-mbstring php72-php-opcache php72-php-pdo php72-php-pear \
    php72-php-pecl-apcu php72-php-pecl-crypto php72-php-pecl-event \
    php72-php-pecl-inotify php72-php-pecl-mcrypt php72-php-pecl-memcache \
    php72-php-pecl-memcached php72-php-pecl-mysql php72-php-pecl-zip php72-php-xml \
    php72-php-fpm php72-php-pecl-swoole2 php72-php-pecl-geoip.x86_64 php72-php-gmp -y

ENV PATH=/opt/remi/php72/root/usr/bin:/opt/remi/php72/root/usr/sbin:$PATH
RUN mkdir /data/appserver -p
RUN mkdir /data/www -p
#VOLUME /data/appserver
#CMD ["/opt/remi/php72/root/usr/sbin/php-fpm"]
#RUN /opt/remi/php72/root/usr/sbin/php-fpm
EXPOSE 9000
#WORKDIR /data/appserver
#CMD ["php", "/data/appserver/yzf", "start"]
#RUN /data/appserver/yzf start

