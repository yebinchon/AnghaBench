
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct powerdomain {int pwrsts; int prcm_offs; int name; } ;


 int EINVAL ;
 int OMAP_POWERSTATE_MASK ;
 int OMAP_POWERSTATE_SHIFT ;
 int PM_PWSTCTRL ;
 int pr_debug (char*,int ,int) ;
 int prm_rmw_mod_reg_bits (int ,int,int ,int ) ;

int pwrdm_set_next_pwrst(struct powerdomain *pwrdm, u8 pwrst)
{
 if (!pwrdm)
  return -EINVAL;

 if (!(pwrdm->pwrsts & (1 << pwrst)))
  return -EINVAL;

 pr_debug("powerdomain: setting next powerstate for %s to %0x\n",
   pwrdm->name, pwrst);

 prm_rmw_mod_reg_bits(OMAP_POWERSTATE_MASK,
        (pwrst << OMAP_POWERSTATE_SHIFT),
        pwrdm->prcm_offs, PM_PWSTCTRL);

 return 0;
}
