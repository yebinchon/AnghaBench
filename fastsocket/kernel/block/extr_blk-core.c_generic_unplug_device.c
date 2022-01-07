
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; } ;


 int __generic_unplug_device (struct request_queue*) ;
 scalar_t__ blk_queue_plugged (struct request_queue*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void generic_unplug_device(struct request_queue *q)
{
 if (blk_queue_plugged(q)) {
  spin_lock_irq(q->queue_lock);
  __generic_unplug_device(q);
  spin_unlock_irq(q->queue_lock);
 }
}
