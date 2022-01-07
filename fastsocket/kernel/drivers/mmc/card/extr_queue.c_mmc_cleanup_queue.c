
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; int * queuedata; } ;
struct mmc_queue {int * card; int * bounce_buf; int * sg; int * bounce_sg; int thread; struct request_queue* queue; } ;


 int blk_start_queue (struct request_queue*) ;
 int kfree (int *) ;
 int kthread_stop (int ) ;
 int mmc_queue_resume (struct mmc_queue*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void mmc_cleanup_queue(struct mmc_queue *mq)
{
 struct request_queue *q = mq->queue;
 unsigned long flags;


 mmc_queue_resume(mq);


 kthread_stop(mq->thread);


 spin_lock_irqsave(q->queue_lock, flags);
 q->queuedata = ((void*)0);
 blk_start_queue(q);
 spin_unlock_irqrestore(q->queue_lock, flags);

  if (mq->bounce_sg)
   kfree(mq->bounce_sg);
  mq->bounce_sg = ((void*)0);

 kfree(mq->sg);
 mq->sg = ((void*)0);

 if (mq->bounce_buf)
  kfree(mq->bounce_buf);
 mq->bounce_buf = ((void*)0);

 mq->card = ((void*)0);
}
