
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct powerdomain {int dummy; } ;
struct TYPE_2__ {struct powerdomain* ptr; int name; } ;
struct clkdm_pwrdm_autodep {TYPE_1__ pwrdm; int omap_chip; } ;


 int ENOENT ;
 struct powerdomain* ERR_PTR (int ) ;
 int omap_chip_is (int ) ;
 int pr_err (char*,int ) ;
 struct powerdomain* pwrdm_lookup (int ) ;

__attribute__((used)) static void _autodep_lookup(struct clkdm_pwrdm_autodep *autodep)
{
 struct powerdomain *pwrdm;

 if (!autodep)
  return;

 if (!omap_chip_is(autodep->omap_chip))
  return;

 pwrdm = pwrdm_lookup(autodep->pwrdm.name);
 if (!pwrdm) {
  pr_err("clockdomain: autodeps: powerdomain %s does not exist\n",
    autodep->pwrdm.name);
  pwrdm = ERR_PTR(-ENOENT);
 }
 autodep->pwrdm.ptr = pwrdm;
}
