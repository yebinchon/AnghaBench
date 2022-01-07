
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; } ;
struct mmc_queue {int flags; int thread_sem; struct request_queue* queue; } ;


 int MMC_QUEUE_SUSPENDED ;
 int blk_start_queue (struct request_queue*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int up (int *) ;

void mmc_queue_resume(struct mmc_queue *mq)
{
 struct request_queue *q = mq->queue;
 unsigned long flags;

 if (mq->flags & MMC_QUEUE_SUSPENDED) {
  mq->flags &= ~MMC_QUEUE_SUSPENDED;

  up(&mq->thread_sem);

  spin_lock_irqsave(q->queue_lock, flags);
  blk_start_queue(q);
  spin_unlock_irqrestore(q->queue_lock, flags);
 }
}
