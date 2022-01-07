
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int prcm_offs; } ;


 int EINVAL ;
 int OMAP3430_LOGICSTATEST ;
 int PM_PWSTST ;
 int prm_read_mod_bits_shift (int ,int ,int ) ;

int pwrdm_read_logic_pwrst(struct powerdomain *pwrdm)
{
 if (!pwrdm)
  return -EINVAL;

 return prm_read_mod_bits_shift(pwrdm->prcm_offs, PM_PWSTST,
     OMAP3430_LOGICSTATEST);
}
