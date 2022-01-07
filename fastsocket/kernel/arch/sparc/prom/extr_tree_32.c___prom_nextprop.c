
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* (* no_nextprop ) (int,char*) ;} ;


 int prom_lock ;
 TYPE_1__* prom_nodeops ;
 int restore_current () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 char* stub1 (int,char*) ;

char * __prom_nextprop(int node, char * oprop)
{
 unsigned long flags;
 char *prop;

 spin_lock_irqsave(&prom_lock, flags);
 prop = prom_nodeops->no_nextprop(node, oprop);
 restore_current();
 spin_unlock_irqrestore(&prom_lock, flags);

 return prop;
}
