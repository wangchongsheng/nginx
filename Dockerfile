# Description: CentOS7.6.1810 and nginx1.17.3 environment
FROM centos:7.6.1810
MAINTAINER "WangChongsheng <wang_chongsheng@163.com>"

ENV NNX_DOC_ROOT="/usr/local" 

ADD nginx.tar ${NNX_DOC_ROOT}

RUN yum install --nogpgcheck net-tools pcre-devel openssl-devel \
    libxslt-devel libxml2-devel gd-devel \
    GeoIP-devel perl-devel perl-ExtUtils-Embed -y

ENTRYPOINT ["/usr/local/nginx/sbin/nginx","-g","daemon off;"]

EXPOSE 80/TCP
