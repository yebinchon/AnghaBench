
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_therm {int dummy; } ;


 int ENODEV ;
 int nv_error (struct nouveau_therm*,char*,int,int) ;
 int nv_rd32 (struct nouveau_therm*,int) ;

__attribute__((used)) static int
pwm_info(struct nouveau_therm *therm, int line)
{
 u32 gpio = nv_rd32(therm, 0x00d610 + (line * 0x04));
 switch (gpio & 0x000000c0) {
 case 0x00000000:
 case 0x00000040:
  switch (gpio & 0x0000001f) {
  case 0x19: return 1;
  case 0x1c: return 0;
  default:
   break;
  }
 default:
  break;
 }

 nv_error(therm, "GPIO %d unknown PWM: 0x%08x\n", line, gpio);
 return -ENODEV;
}
