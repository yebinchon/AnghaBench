
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int queue_lock; } ;
struct request {TYPE_2__* rq_disk; } ;
struct TYPE_3__ {scalar_t__ make_it_fail; } ;
struct TYPE_4__ {TYPE_1__ part0; } ;


 int BUG_ON (int ) ;
 int EIO ;
 int ELEVATOR_INSERT_BACK ;
 int ENODEV ;
 int __elv_add_request (struct request_queue*,struct request*,int ,int ) ;
 int blk_queue_dead (struct request_queue*) ;
 int blk_queued_rq (struct request*) ;
 int blk_rq_bytes (struct request*) ;
 scalar_t__ blk_rq_check_limits (struct request_queue*,struct request*) ;
 int drive_stat_acct (struct request*,int) ;
 int fail_make_request ;
 scalar_t__ should_fail (int *,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ unlikely (int ) ;

int blk_insert_cloned_request(struct request_queue *q, struct request *rq)
{
 unsigned long flags;

 if (blk_rq_check_limits(q, rq))
  return -EIO;







 spin_lock_irqsave(q->queue_lock, flags);
 if (unlikely(blk_queue_dead(q))) {
  spin_unlock_irqrestore(q->queue_lock, flags);
  return -ENODEV;
 }





 BUG_ON(blk_queued_rq(rq));

 drive_stat_acct(rq, 1);
 __elv_add_request(q, rq, ELEVATOR_INSERT_BACK, 0);

 spin_unlock_irqrestore(q->queue_lock, flags);

 return 0;
}
