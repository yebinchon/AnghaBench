
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {struct clockdomain** pwrdm_clkdms; int name; } ;
struct clockdomain {int name; } ;


 int EINVAL ;
 int ENOMEM ;
 int PWRDM_MAX_CLKDMS ;
 int WARN_ON (int) ;
 int pr_debug (char*,int ,int ) ;
 int pwrdm_rwlock ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

int pwrdm_add_clkdm(struct powerdomain *pwrdm, struct clockdomain *clkdm)
{
 unsigned long flags;
 int i;
 int ret = -EINVAL;

 if (!pwrdm || !clkdm)
  return -EINVAL;

 pr_debug("powerdomain: associating clockdomain %s with powerdomain "
   "%s\n", clkdm->name, pwrdm->name);

 write_lock_irqsave(&pwrdm_rwlock, flags);

 for (i = 0; i < PWRDM_MAX_CLKDMS; i++) {
  if (!pwrdm->pwrdm_clkdms[i])
   break;






 }

 if (i == PWRDM_MAX_CLKDMS) {
  pr_debug("powerdomain: increase PWRDM_MAX_CLKDMS for "
    "pwrdm %s clkdm %s\n", pwrdm->name, clkdm->name);
  WARN_ON(1);
  ret = -ENOMEM;
  goto pac_exit;
 }

 pwrdm->pwrdm_clkdms[i] = clkdm;

 ret = 0;

pac_exit:
 write_unlock_irqrestore(&pwrdm_rwlock, flags);

 return ret;
}
