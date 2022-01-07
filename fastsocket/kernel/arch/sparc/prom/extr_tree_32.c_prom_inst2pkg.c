
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* v2_inst2pkg ) (int) ;} ;
struct TYPE_4__ {TYPE_1__ pv_v2devops; } ;


 int prom_lock ;
 int restore_current () ;
 TYPE_2__* romvec ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int) ;

int prom_inst2pkg(int inst)
{
 int node;
 unsigned long flags;

 spin_lock_irqsave(&prom_lock, flags);
 node = (*romvec->pv_v2devops.v2_inst2pkg)(inst);
 restore_current();
 spin_unlock_irqrestore(&prom_lock, flags);
 if (node == -1) return 0;
 return node;
}
