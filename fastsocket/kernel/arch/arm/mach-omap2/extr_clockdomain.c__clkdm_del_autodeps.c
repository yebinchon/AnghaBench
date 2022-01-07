
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* ptr; } ;
struct clockdomain {TYPE_1__ pwrdm; } ;
struct TYPE_9__ {TYPE_4__* ptr; } ;
struct clkdm_pwrdm_autodep {TYPE_2__ pwrdm; int omap_chip; } ;
struct TYPE_11__ {int name; } ;
struct TYPE_10__ {int name; } ;


 scalar_t__ IS_ERR (TYPE_4__*) ;
 struct clkdm_pwrdm_autodep* autodeps ;
 int omap_chip_is (int ) ;
 int pr_debug (char*,int ,int ) ;
 int pwrdm_del_sleepdep (TYPE_3__*,TYPE_4__*) ;
 int pwrdm_del_wkdep (TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static void _clkdm_del_autodeps(struct clockdomain *clkdm)
{
 struct clkdm_pwrdm_autodep *autodep;

 for (autodep = autodeps; autodep->pwrdm.ptr; autodep++) {
  if (IS_ERR(autodep->pwrdm.ptr))
   continue;

  if (!omap_chip_is(autodep->omap_chip))
   continue;

  pr_debug("clockdomain: removing %s sleepdep/wkdep for "
    "pwrdm %s\n", autodep->pwrdm.ptr->name,
    clkdm->pwrdm.ptr->name);

  pwrdm_del_sleepdep(clkdm->pwrdm.ptr, autodep->pwrdm.ptr);
  pwrdm_del_wkdep(clkdm->pwrdm.ptr, autodep->pwrdm.ptr);
 }
}
