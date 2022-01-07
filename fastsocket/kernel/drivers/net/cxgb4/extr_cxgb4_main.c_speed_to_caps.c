
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FW_PORT_CAP_SPEED_100M ;
 unsigned int FW_PORT_CAP_SPEED_10G ;
 unsigned int FW_PORT_CAP_SPEED_1G ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_10000 ;

__attribute__((used)) static unsigned int speed_to_caps(int speed)
{
 if (speed == SPEED_100)
  return FW_PORT_CAP_SPEED_100M;
 if (speed == SPEED_1000)
  return FW_PORT_CAP_SPEED_1G;
 if (speed == SPEED_10000)
  return FW_PORT_CAP_SPEED_10G;
 return 0;
}
