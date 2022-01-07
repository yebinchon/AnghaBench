
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* last; } ;
typedef TYPE_1__ isdn_net_local ;
struct TYPE_6__ {int queue_lock; TYPE_1__* queue; } ;
typedef TYPE_2__ isdn_net_dev ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static __inline__ void isdn_net_add_to_bundle(isdn_net_dev *nd, isdn_net_local *nlp)
{
 isdn_net_local *lp;
 unsigned long flags;

 spin_lock_irqsave(&nd->queue_lock, flags);

 lp = nd->queue;


 nlp->last = lp->last;
 lp->last->next = nlp;
 lp->last = nlp;
 nlp->next = lp;
 nd->queue = nlp;

 spin_unlock_irqrestore(&nd->queue_lock, flags);
}
