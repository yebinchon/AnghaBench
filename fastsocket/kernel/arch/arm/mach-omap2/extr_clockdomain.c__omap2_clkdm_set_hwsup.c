
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* ptr; } ;
struct clockdomain {TYPE_2__ pwrdm; int clktrctrl_mask; } ;
struct TYPE_3__ {int prcm_offs; } ;


 int BUG () ;
 int CM_CLKSTCTRL ;
 int OMAP24XX_CLKSTCTRL_DISABLE_AUTO ;
 int OMAP24XX_CLKSTCTRL_ENABLE_AUTO ;
 int OMAP34XX_CLKSTCTRL_DISABLE_AUTO ;
 int OMAP34XX_CLKSTCTRL_ENABLE_AUTO ;
 int __ffs (int ) ;
 int cm_rmw_mod_reg_bits (int ,int,int ,int ) ;
 scalar_t__ cpu_is_omap24xx () ;
 scalar_t__ cpu_is_omap34xx () ;

__attribute__((used)) static void _omap2_clkdm_set_hwsup(struct clockdomain *clkdm, int enable)
{
 u32 v;

 if (cpu_is_omap24xx()) {
  if (enable)
   v = OMAP24XX_CLKSTCTRL_ENABLE_AUTO;
  else
   v = OMAP24XX_CLKSTCTRL_DISABLE_AUTO;
 } else if (cpu_is_omap34xx()) {
  if (enable)
   v = OMAP34XX_CLKSTCTRL_ENABLE_AUTO;
  else
   v = OMAP34XX_CLKSTCTRL_DISABLE_AUTO;
 } else {
  BUG();
 }

 cm_rmw_mod_reg_bits(clkdm->clktrctrl_mask,
       v << __ffs(clkdm->clktrctrl_mask),
       clkdm->pwrdm.ptr->prcm_offs, CM_CLKSTCTRL);
}
