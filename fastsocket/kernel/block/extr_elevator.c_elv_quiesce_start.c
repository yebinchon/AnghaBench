
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; int elevator; } ;


 int QUEUE_FLAG_ELVSWITCH ;
 int blk_drain_queue (struct request_queue*,int) ;
 int queue_flag_set (int ,struct request_queue*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void elv_quiesce_start(struct request_queue *q)
{
 if (!q->elevator)
  return;

 spin_lock_irq(q->queue_lock);
 queue_flag_set(QUEUE_FLAG_ELVSWITCH, q);
 spin_unlock_irq(q->queue_lock);

 blk_drain_queue(q, 0);
}
