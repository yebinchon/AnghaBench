
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nouveau_therm {int dummy; } ;
struct TYPE_2__ {int chipset; int crystal; } ;


 TYPE_1__* nv_device (struct nouveau_therm*) ;
 int nv_rd32 (struct nouveau_therm*,int) ;

int
nv50_fan_pwm_clock(struct nouveau_therm *therm)
{
 int chipset = nv_device(therm)->chipset;
 int crystal = nv_device(therm)->crystal;
 int pwm_clock;


 if (chipset > 0x50 && chipset < 0x94) {
  u8 pwm_div = nv_rd32(therm, 0x410c);
  if (nv_rd32(therm, 0xc040) & 0x800000) {


   pwm_clock = (100000000 >> pwm_div) * 10 / 24;
  } else {

   pwm_clock = (crystal * 1000) >> pwm_div;
   pwm_clock /= 20;
  }
 } else {
  pwm_clock = (crystal * 1000) / 20;
 }

 return pwm_clock;
}
