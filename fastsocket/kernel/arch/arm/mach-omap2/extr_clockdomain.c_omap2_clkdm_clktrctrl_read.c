
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* ptr; } ;
struct clockdomain {int clktrctrl_mask; TYPE_2__ pwrdm; } ;
struct TYPE_3__ {int prcm_offs; } ;


 int CM_CLKSTCTRL ;
 int EINVAL ;
 int __ffs (int) ;
 int cm_read_mod_reg (int ,int ) ;

__attribute__((used)) static int omap2_clkdm_clktrctrl_read(struct clockdomain *clkdm)
{
 u32 v;

 if (!clkdm)
  return -EINVAL;

 v = cm_read_mod_reg(clkdm->pwrdm.ptr->prcm_offs, CM_CLKSTCTRL);
 v &= clkdm->clktrctrl_mask;
 v >>= __ffs(clkdm->clktrctrl_mask);

 return v;
}
