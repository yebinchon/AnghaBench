
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_therm {int dummy; } ;


 int nv_mask (struct nouveau_therm*,int,int,int) ;
 int pwm_info (struct nouveau_therm*,int*,int*,int*) ;

int
nv50_fan_pwm_ctrl(struct nouveau_therm *therm, int line, bool enable)
{
 u32 data = enable ? 0x00000001 : 0x00000000;
 int ctrl, id, ret = pwm_info(therm, &line, &ctrl, &id);
 if (ret == 0)
  nv_mask(therm, ctrl, 0x00010001 << line, data << line);
 return ret;
}
