
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; TYPE_2__* netdev; scalar_t__ master; } ;
typedef TYPE_1__ isdn_net_local ;
struct TYPE_8__ {int queue_lock; } ;
typedef TYPE_2__ isdn_net_dev ;
struct TYPE_9__ {TYPE_2__* netdev; } ;


 TYPE_5__* ISDN_MASTER_PRIV (TYPE_1__*) ;
 int isdn_net_lp_busy (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static __inline__ int isdn_net_device_busy(isdn_net_local *lp)
{
 isdn_net_local *nlp;
 isdn_net_dev *nd;
 unsigned long flags;

 if (!isdn_net_lp_busy(lp))
  return 0;

 if (lp->master)
  nd = ISDN_MASTER_PRIV(lp)->netdev;
 else
  nd = lp->netdev;

 spin_lock_irqsave(&nd->queue_lock, flags);
 nlp = lp->next;
 while (nlp != lp) {
  if (!isdn_net_lp_busy(nlp)) {
   spin_unlock_irqrestore(&nd->queue_lock, flags);
   return 0;
  }
  nlp = nlp->next;
 }
 spin_unlock_irqrestore(&nd->queue_lock, flags);
 return 1;
}
