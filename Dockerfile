FROM cm2network/steamcmd:root

RUN apt update && apt install -y xvfb

USER steam
RUN ./steamcmd.sh +login anonymous +app_update 1007 +app_update 1963720 +quit

CMD ["bash", "/home/steam/Steam/steamapps/common/Core Keeper Dedicated Server/_launch.sh"]