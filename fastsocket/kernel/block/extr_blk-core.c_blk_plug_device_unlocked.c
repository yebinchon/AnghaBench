
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; } ;


 int blk_plug_device (struct request_queue*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void blk_plug_device_unlocked(struct request_queue *q)
{
 unsigned long flags;

 spin_lock_irqsave(q->queue_lock, flags);
 blk_plug_device(q);
 spin_unlock_irqrestore(q->queue_lock, flags);
}
