
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_7__ {scalar_t__ next; TYPE_1__* dev; } ;
typedef TYPE_2__ isdn_net_dev ;
struct TYPE_8__ {TYPE_2__* netdev; int lock; } ;
struct TYPE_6__ {int name; } ;


 int ENODEV ;
 int ISDN_TIMER_NETHANGUP ;
 TYPE_5__* dev ;
 int isdn_net_realrm (TYPE_2__*,TYPE_2__*) ;
 int isdn_timer_ctrl (int ,int ) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int strcmp (int ,char*) ;

int
isdn_net_rm(char *name)
{
 u_long flags;
 isdn_net_dev *p;
 isdn_net_dev *q;


 spin_lock_irqsave(&dev->lock, flags);
 p = dev->netdev;
 q = ((void*)0);
 while (p) {
  if (!strcmp(p->dev->name, name)) {
   spin_unlock_irqrestore(&dev->lock, flags);
   return (isdn_net_realrm(p, q));
  }
  q = p;
  p = (isdn_net_dev *) p->next;
 }
 spin_unlock_irqrestore(&dev->lock, flags);

 if (dev->netdev == ((void*)0))
  isdn_timer_ctrl(ISDN_TIMER_NETHANGUP, 0);
 return -ENODEV;
}
