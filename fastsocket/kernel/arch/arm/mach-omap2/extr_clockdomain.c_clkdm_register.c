
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct powerdomain {int dummy; } ;
struct TYPE_2__ {struct powerdomain* ptr; int name; } ;
struct clockdomain {int name; int node; TYPE_1__ pwrdm; int omap_chip; } ;


 int EEXIST ;
 int EINVAL ;
 scalar_t__ _clkdm_lookup (int ) ;
 int clkdm_list ;
 int clkdm_mutex ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap_chip_is (int ) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ,int ) ;
 int pwrdm_add_clkdm (struct powerdomain*,struct clockdomain*) ;
 struct powerdomain* pwrdm_lookup (int ) ;

int clkdm_register(struct clockdomain *clkdm)
{
 int ret = -EINVAL;
 struct powerdomain *pwrdm;

 if (!clkdm || !clkdm->name)
  return -EINVAL;

 if (!omap_chip_is(clkdm->omap_chip))
  return -EINVAL;

 pwrdm = pwrdm_lookup(clkdm->pwrdm.name);
 if (!pwrdm) {
  pr_err("clockdomain: %s: powerdomain %s does not exist\n",
   clkdm->name, clkdm->pwrdm.name);
  return -EINVAL;
 }
 clkdm->pwrdm.ptr = pwrdm;

 mutex_lock(&clkdm_mutex);

 if (_clkdm_lookup(clkdm->name)) {
  ret = -EEXIST;
  goto cr_unlock;
 }

 list_add(&clkdm->node, &clkdm_list);

 pwrdm_add_clkdm(pwrdm, clkdm);

 pr_debug("clockdomain: registered %s\n", clkdm->name);
 ret = 0;

cr_unlock:
 mutex_unlock(&clkdm_mutex);

 return ret;
}
