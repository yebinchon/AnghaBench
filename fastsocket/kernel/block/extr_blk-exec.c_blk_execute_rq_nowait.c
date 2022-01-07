
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; int (* request_fn ) (struct request_queue*) ;} ;
struct request {scalar_t__ cmd_type; int errors; int cmd_flags; int * end_io; struct gendisk* rq_disk; } ;
struct gendisk {int dummy; } ;
typedef int rq_end_io_fn ;


 int ELEVATOR_INSERT_BACK ;
 int ELEVATOR_INSERT_FRONT ;
 int ENXIO ;
 int REQ_QUIET ;
 scalar_t__ REQ_TYPE_PM_RESUME ;
 int WARN_ON (int ) ;
 int __blk_end_request_all (struct request*,int ) ;
 int __elv_add_request (struct request_queue*,struct request*,int,int) ;
 int __generic_unplug_device (struct request_queue*) ;
 int blk_queue_dead (struct request_queue*) ;
 int irqs_disabled () ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int stub1 (struct request_queue*) ;
 scalar_t__ unlikely (int ) ;

void blk_execute_rq_nowait(struct request_queue *q, struct gendisk *bd_disk,
      struct request *rq, int at_head,
      rq_end_io_fn *done)
{
 int where = at_head ? ELEVATOR_INSERT_FRONT : ELEVATOR_INSERT_BACK;

 WARN_ON(irqs_disabled());

 rq->rq_disk = bd_disk;
 rq->end_io = done;

 spin_lock_irq(q->queue_lock);

 if (unlikely(blk_queue_dead(q))) {
  rq->cmd_flags |= REQ_QUIET;
  rq->errors = -ENXIO;
  __blk_end_request_all(rq, rq->errors);
  spin_unlock_irq(q->queue_lock);
  return;
 }

 __elv_add_request(q, rq, where, 1);
 __generic_unplug_device(q);

 if (rq->cmd_type == REQ_TYPE_PM_RESUME)
  q->request_fn(q);
 spin_unlock_irq(q->queue_lock);
}
