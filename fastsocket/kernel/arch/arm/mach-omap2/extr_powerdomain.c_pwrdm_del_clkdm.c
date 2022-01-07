
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {struct clockdomain** pwrdm_clkdms; int name; } ;
struct clockdomain {int name; } ;


 int EINVAL ;
 int ENOENT ;
 int PWRDM_MAX_CLKDMS ;
 int pr_debug (char*,int ,int ) ;
 int pwrdm_rwlock ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

int pwrdm_del_clkdm(struct powerdomain *pwrdm, struct clockdomain *clkdm)
{
 unsigned long flags;
 int ret = -EINVAL;
 int i;

 if (!pwrdm || !clkdm)
  return -EINVAL;

 pr_debug("powerdomain: dissociating clockdomain %s from powerdomain "
   "%s\n", clkdm->name, pwrdm->name);

 write_lock_irqsave(&pwrdm_rwlock, flags);

 for (i = 0; i < PWRDM_MAX_CLKDMS; i++)
  if (pwrdm->pwrdm_clkdms[i] == clkdm)
   break;

 if (i == PWRDM_MAX_CLKDMS) {
  pr_debug("powerdomain: clkdm %s not associated with pwrdm "
    "%s ?!\n", clkdm->name, pwrdm->name);
  ret = -ENOENT;
  goto pdc_exit;
 }

 pwrdm->pwrdm_clkdms[i] = ((void*)0);

 ret = 0;

pdc_exit:
 write_unlock_irqrestore(&pwrdm_rwlock, flags);

 return ret;
}
