
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_therm {int dummy; } ;


 int EINVAL ;
 int nv_rd32 (struct nouveau_therm*,int) ;
 int pwm_info (struct nouveau_therm*,int) ;

__attribute__((used)) static int
nvd0_fan_pwm_get(struct nouveau_therm *therm, int line, u32 *divs, u32 *duty)
{
 int indx = pwm_info(therm, line);
 if (indx < 0)
  return indx;

 if (nv_rd32(therm, 0x00d610 + (line * 0x04)) & 0x00000040) {
  *divs = nv_rd32(therm, 0x00e114 + (indx * 8));
  *duty = nv_rd32(therm, 0x00e118 + (indx * 8));
  return 0;
 }

 return -EINVAL;
}
