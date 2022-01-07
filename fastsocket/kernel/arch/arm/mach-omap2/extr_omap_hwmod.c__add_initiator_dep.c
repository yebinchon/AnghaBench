
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct omap_hwmod {TYPE_3__* _clk; } ;
struct TYPE_6__ {TYPE_2__* clkdm; } ;
struct TYPE_4__ {int ptr; } ;
struct TYPE_5__ {TYPE_1__ pwrdm; } ;


 int EINVAL ;
 int pwrdm_add_sleepdep (int ,int ) ;

__attribute__((used)) static int _add_initiator_dep(struct omap_hwmod *oh, struct omap_hwmod *init_oh)
{
 if (!oh->_clk)
  return -EINVAL;

 return pwrdm_add_sleepdep(oh->_clk->clkdm->pwrdm.ptr,
      init_oh->_clk->clkdm->pwrdm.ptr);
}
