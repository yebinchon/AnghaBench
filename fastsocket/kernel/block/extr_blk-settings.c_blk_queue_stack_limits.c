
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; int queue_flags; int limits; } ;


 int QUEUE_FLAG_CLUSTER ;
 int WARN_ON_ONCE (int) ;
 int blk_stack_limits (int *,int *,int ) ;
 int queue_flag_clear (int ,struct request_queue*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int test_bit (int ,int *) ;

void blk_queue_stack_limits(struct request_queue *t, struct request_queue *b)
{
 blk_stack_limits(&t->limits, &b->limits, 0);

 if (!t->queue_lock)
  WARN_ON_ONCE(1);
 else if (!test_bit(QUEUE_FLAG_CLUSTER, &b->queue_flags)) {
  unsigned long flags;
  spin_lock_irqsave(t->queue_lock, flags);
  queue_flag_clear(QUEUE_FLAG_CLUSTER, t);
  spin_unlock_irqrestore(t->queue_lock, flags);
 }
}
