FROM grafana/grafana

LABEL maintainer="Vander Zago"

USER root

RUN apk --no-cache add tzdata curl

# Configurar timezone
RUN cp /usr/share/zoneinfo/Brazil/East /etc/localtime \
    && echo "Brazil/East" >  /etc/timezone

USER grafana