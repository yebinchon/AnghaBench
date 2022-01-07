
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct mISDNtimer {TYPE_1__* dev; int list; } ;
struct TYPE_2__ {int wait; int lock; int expired; } ;


 int list_move_tail (int *,int *) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void
dev_expire_timer(unsigned long data)
{
 struct mISDNtimer *timer = (void *)data;
 u_long flags;

 spin_lock_irqsave(&timer->dev->lock, flags);
 list_move_tail(&timer->list, &timer->dev->expired);
 spin_unlock_irqrestore(&timer->dev->lock, flags);
 wake_up_interruptible(&timer->dev->wait);
}
