
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_6__ {int lock; TYPE_2__* netdev; } ;
struct TYPE_5__ {TYPE_1__* local; } ;
struct TYPE_4__ {int master; } ;


 TYPE_3__* dev ;
 int isdn_net_realrm (TYPE_2__*,int *) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

int
isdn_net_rmall(void)
{
 u_long flags;
 int ret;


 spin_lock_irqsave(&dev->lock, flags);
 while (dev->netdev) {
  if (!dev->netdev->local->master) {

   spin_unlock_irqrestore(&dev->lock, flags);
   if ((ret = isdn_net_realrm(dev->netdev, ((void*)0)))) {
    return ret;
   }
   spin_lock_irqsave(&dev->lock, flags);
  }
 }
 dev->netdev = ((void*)0);
 spin_unlock_irqrestore(&dev->lock, flags);
 return 0;
}
