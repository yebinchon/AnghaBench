
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int prcm_offs; } ;


 int EINVAL ;
 int OMAP_POWERSTATE_MASK ;
 int PM_PWSTCTRL ;
 int prm_read_mod_bits_shift (int ,int ,int ) ;

int pwrdm_read_next_pwrst(struct powerdomain *pwrdm)
{
 if (!pwrdm)
  return -EINVAL;

 return prm_read_mod_bits_shift(pwrdm->prcm_offs, PM_PWSTCTRL,
     OMAP_POWERSTATE_MASK);
}
