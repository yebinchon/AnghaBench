
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int xmit_lock; struct TYPE_6__* next; } ;
typedef TYPE_1__ isdn_net_local ;
struct TYPE_7__ {int queue_lock; TYPE_1__* queue; } ;
typedef TYPE_2__ isdn_net_dev ;


 scalar_t__ isdn_net_lp_busy (TYPE_1__*) ;
 int local_bh_disable () ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static __inline__ isdn_net_local * isdn_net_get_locked_lp(isdn_net_dev *nd)
{
 unsigned long flags;
 isdn_net_local *lp;

 spin_lock_irqsave(&nd->queue_lock, flags);
 lp = nd->queue;
 while (isdn_net_lp_busy(nd->queue)) {
  nd->queue = nd->queue->next;
  if (nd->queue == lp) {
   lp = ((void*)0);
   goto errout;
  }
 }
 lp = nd->queue;
 nd->queue = nd->queue->next;
 spin_unlock_irqrestore(&nd->queue_lock, flags);
 spin_lock(&lp->xmit_lock);
 local_bh_disable();
 return lp;
errout:
 spin_unlock_irqrestore(&nd->queue_lock, flags);
 return lp;
}
