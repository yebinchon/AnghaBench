
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* ptr; } ;
struct clockdomain {int flags; TYPE_2__ pwrdm; int clktrctrl_mask; int name; } ;
struct TYPE_3__ {int prcm_offs; } ;


 int BUG () ;
 int CLKDM_CAN_FORCE_WAKEUP ;
 int CM_CLKSTCTRL ;
 int EINVAL ;
 int OMAP24XX_FORCESTATE ;
 int OMAP34XX_CLKSTCTRL_FORCE_WAKEUP ;
 int PM_PWSTCTRL ;
 int __ffs (int ) ;
 int cm_clear_mod_reg_bits (int ,int ,int ) ;
 int cm_rmw_mod_reg_bits (int ,int,int ,int ) ;
 scalar_t__ cpu_is_omap24xx () ;
 scalar_t__ cpu_is_omap34xx () ;
 int pr_debug (char*,int ) ;

int omap2_clkdm_wakeup(struct clockdomain *clkdm)
{
 if (!clkdm)
  return -EINVAL;

 if (!(clkdm->flags & CLKDM_CAN_FORCE_WAKEUP)) {
  pr_debug("clockdomain: %s does not support forcing "
    "wakeup via software\n", clkdm->name);
  return -EINVAL;
 }

 pr_debug("clockdomain: forcing wakeup on %s\n", clkdm->name);

 if (cpu_is_omap24xx()) {

  cm_clear_mod_reg_bits(OMAP24XX_FORCESTATE,
          clkdm->pwrdm.ptr->prcm_offs, PM_PWSTCTRL);

 } else if (cpu_is_omap34xx()) {

  u32 v = (OMAP34XX_CLKSTCTRL_FORCE_WAKEUP <<
    __ffs(clkdm->clktrctrl_mask));

  cm_rmw_mod_reg_bits(clkdm->clktrctrl_mask, v,
        clkdm->pwrdm.ptr->prcm_offs, CM_CLKSTCTRL);

 } else {
  BUG();
 };

 return 0;
}
