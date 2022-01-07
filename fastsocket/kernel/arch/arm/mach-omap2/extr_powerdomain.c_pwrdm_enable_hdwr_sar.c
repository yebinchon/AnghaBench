
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int flags; int prcm_offs; int name; } ;


 int EINVAL ;
 int OMAP3430ES2_SAVEANDRESTORE_SHIFT ;
 int PM_PWSTCTRL ;
 int PWRDM_HAS_HDWR_SAR ;
 int pr_debug (char*,int ) ;
 int prm_rmw_mod_reg_bits (int ,int,int ,int ) ;

int pwrdm_enable_hdwr_sar(struct powerdomain *pwrdm)
{
 if (!pwrdm)
  return -EINVAL;

 if (!(pwrdm->flags & PWRDM_HAS_HDWR_SAR))
  return -EINVAL;

 pr_debug("powerdomain: %s: setting SAVEANDRESTORE bit\n",
   pwrdm->name);

 prm_rmw_mod_reg_bits(0, 1 << OMAP3430ES2_SAVEANDRESTORE_SHIFT,
        pwrdm->prcm_offs, PM_PWSTCTRL);

 return 0;
}
