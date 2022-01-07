
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* no_setprop ) (int,char const*,char*,int) ;} ;


 int prom_lock ;
 TYPE_1__* prom_nodeops ;
 int restore_current () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int,char const*,char*,int) ;

int prom_setprop(int node, const char *pname, char *value, int size)
{
 unsigned long flags;
 int ret;

 if(size == 0) return 0;
 if((pname == 0) || (value == 0)) return 0;
 spin_lock_irqsave(&prom_lock, flags);
 ret = prom_nodeops->no_setprop(node, pname, value, size);
 restore_current();
 spin_unlock_irqrestore(&prom_lock, flags);
 return ret;
}
