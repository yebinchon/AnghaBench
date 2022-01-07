
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptr; } ;
struct clockdomain {int name; int node; TYPE_1__ pwrdm; } ;


 int EINVAL ;
 int clkdm_mutex ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ) ;
 int pwrdm_del_clkdm (int ,struct clockdomain*) ;

int clkdm_unregister(struct clockdomain *clkdm)
{
 if (!clkdm)
  return -EINVAL;

 pwrdm_del_clkdm(clkdm->pwrdm.ptr, clkdm);

 mutex_lock(&clkdm_mutex);
 list_del(&clkdm->node);
 mutex_unlock(&clkdm_mutex);

 pr_debug("clockdomain: unregistered %s\n", clkdm->name);

 return 0;
}
