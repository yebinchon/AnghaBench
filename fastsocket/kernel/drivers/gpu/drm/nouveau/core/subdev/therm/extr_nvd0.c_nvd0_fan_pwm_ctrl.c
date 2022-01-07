
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_therm {int dummy; } ;


 int nv_mask (struct nouveau_therm*,int,int,int) ;
 int pwm_info (struct nouveau_therm*,int) ;

__attribute__((used)) static int
nvd0_fan_pwm_ctrl(struct nouveau_therm *therm, int line, bool enable)
{
 u32 data = enable ? 0x00000040 : 0x00000000;
 int indx = pwm_info(therm, line);
 if (indx < 0)
  return indx;

 nv_mask(therm, 0x00d610 + (line * 0x04), 0x000000c0, data);
 return 0;
}
