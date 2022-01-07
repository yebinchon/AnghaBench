
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int prcm_offs; int name; } ;


 int EINVAL ;
 int OMAP3430_PM_PREPWSTST ;
 int pr_debug (char*,int ) ;
 int prm_write_mod_reg (int ,int ,int ) ;

int pwrdm_clear_all_prev_pwrst(struct powerdomain *pwrdm)
{
 if (!pwrdm)
  return -EINVAL;






 pr_debug("powerdomain: clearing previous power state reg for %s\n",
   pwrdm->name);

 prm_write_mod_reg(0, pwrdm->prcm_offs, OMAP3430_PM_PREPWSTST);

 return 0;
}
