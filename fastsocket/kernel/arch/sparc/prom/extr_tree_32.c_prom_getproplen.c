
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* no_proplen ) (int,char const*) ;} ;


 int prom_lock ;
 TYPE_1__* prom_nodeops ;
 int restore_current () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int,char const*) ;

int prom_getproplen(int node, const char *prop)
{
 int ret;
 unsigned long flags;

 if((!node) || (!prop))
  return -1;

 spin_lock_irqsave(&prom_lock, flags);
 ret = prom_nodeops->no_proplen(node, prop);
 restore_current();
 spin_unlock_irqrestore(&prom_lock, flags);
 return ret;
}
