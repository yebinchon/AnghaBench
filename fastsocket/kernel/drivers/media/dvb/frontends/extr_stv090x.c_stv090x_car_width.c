
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum stv090x_rolloff { ____Placeholder_stv090x_rolloff } stv090x_rolloff ;






__attribute__((used)) static u32 stv090x_car_width(u32 srate, enum stv090x_rolloff rolloff)
{
 u32 ro;

 switch (rolloff) {
 case 130:
  ro = 20;
  break;
 case 129:
  ro = 25;
  break;
 case 128:
 default:
  ro = 35;
  break;
 }

 return srate + (srate * ro) / 100;
}
