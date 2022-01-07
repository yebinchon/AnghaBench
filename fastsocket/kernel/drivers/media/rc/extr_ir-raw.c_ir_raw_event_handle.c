
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_dev {TYPE_1__* raw; } ;
struct TYPE_2__ {int lock; int thread; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_process (int ) ;

void ir_raw_event_handle(struct rc_dev *dev)
{
 unsigned long flags;

 if (!dev->raw)
  return;

 spin_lock_irqsave(&dev->raw->lock, flags);
 wake_up_process(dev->raw->thread);
 spin_unlock_irqrestore(&dev->raw->lock, flags);
}
