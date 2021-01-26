FROM java:8
LABEL maintainer="liuye <ye.liu01@hand-china.com>"

ENV LANG C.UTF-8

RUN set -x;\
    wget https://repo.rocketx.top/docker/ureport2.tar.gz -P /opt/ \
    && tar -zxf /opt/ureport2.tar.gz  -C /opt/ \
    && rm -rf /opt/ureport2.tar.gz

CMD ["java","-Dfile.encoding=UTF-8","-jar","/opt/ureport2-spring-boot-0.0.1-SNAPSHOT.jar","--spring.config.location=/opt/conf/application.properties"]
