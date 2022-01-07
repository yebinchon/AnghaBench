
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* netdev; struct TYPE_7__* last; struct TYPE_7__* next; scalar_t__ master; } ;
typedef TYPE_2__ isdn_net_local ;
struct TYPE_6__ {int queue_lock; TYPE_2__* local; TYPE_2__* queue; } ;


 TYPE_2__* ISDN_MASTER_PRIV (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static __inline__ void isdn_net_rm_from_bundle(isdn_net_local *lp)
{
 isdn_net_local *master_lp = lp;
 unsigned long flags;

 if (lp->master)
  master_lp = ISDN_MASTER_PRIV(lp);



 spin_lock_irqsave(&master_lp->netdev->queue_lock, flags);
 lp->last->next = lp->next;
 lp->next->last = lp->last;
 if (master_lp->netdev->queue == lp) {
  master_lp->netdev->queue = lp->next;
  if (lp->next == lp) {
   master_lp->netdev->queue = master_lp->netdev->local;
  }
 }
 lp->next = lp->last = lp;


 spin_unlock_irqrestore(&master_lp->netdev->queue_lock, flags);
}
