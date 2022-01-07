
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ADVERTISED_10000baseT_Full ;
 unsigned int ADVERTISED_1000baseT_Full ;
 unsigned int ADVERTISED_100baseT_Full ;
 unsigned int FW_PORT_CAP_SPEED_100M ;
 unsigned int FW_PORT_CAP_SPEED_10G ;
 unsigned int FW_PORT_CAP_SPEED_1G ;

__attribute__((used)) static unsigned int to_fw_linkcaps(unsigned int caps)
{
 unsigned int v = 0;

 if (caps & ADVERTISED_100baseT_Full)
  v |= FW_PORT_CAP_SPEED_100M;
 if (caps & ADVERTISED_1000baseT_Full)
  v |= FW_PORT_CAP_SPEED_1G;
 if (caps & ADVERTISED_10000baseT_Full)
  v |= FW_PORT_CAP_SPEED_10G;
 return v;
}
