
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int myid; struct TYPE_4__* next; } ;
typedef TYPE_1__ capidrv_contr ;
struct TYPE_5__ {TYPE_1__* contr_list; } ;


 TYPE_2__ global ;
 int global_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline capidrv_contr *findcontrbydriverid(int driverid)
{
     unsigned long flags;
 capidrv_contr *p;

 spin_lock_irqsave(&global_lock, flags);
 for (p = global.contr_list; p; p = p->next)
  if (p->myid == driverid)
   break;
 spin_unlock_irqrestore(&global_lock, flags);
 return p;
}
