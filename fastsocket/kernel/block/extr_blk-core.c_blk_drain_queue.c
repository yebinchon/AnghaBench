
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int elvpriv; int* count; int * wait; } ;
struct request_queue {int* in_flight; int queue_lock; TYPE_1__ rq; scalar_t__ request_fn; int * flush_queue; int queue_head; } ;


 int ARRAY_SIZE (int *) ;
 int __blk_run_queue (struct request_queue*) ;
 int blk_throtl_drain (struct request_queue*) ;
 int elv_drain_elevator (struct request_queue*) ;
 int list_empty (int *) ;
 int msleep (int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int wake_up_all (int *) ;

void blk_drain_queue(struct request_queue *q, bool drain_all)
{
 int i;

 while (1) {
  bool drain = 0;

  spin_lock_irq(q->queue_lock);

  elv_drain_elevator(q);
  if (drain_all)
   blk_throtl_drain(q);

  __blk_run_queue(q);

  drain |= q->rq.elvpriv;






  if (drain_all) {
   drain |= !list_empty(&q->queue_head);
   for (i = 0; i < 2; i++) {
    drain |= q->rq.count[i];
    drain |= q->in_flight[i];
    drain |= !list_empty(&q->flush_queue[i]);
   }
  }

  spin_unlock_irq(q->queue_lock);

  if (!drain)
   break;
  msleep(10);
 }






 if (q->request_fn) {
  spin_lock_irq(q->queue_lock);
  for (i = 0; i < ARRAY_SIZE(q->rq.wait); i++)
   wake_up_all(&q->rq.wait[i]);
  spin_unlock_irq(q->queue_lock);
 }

}
