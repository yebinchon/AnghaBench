
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; } ;
struct request {void* special; int cmd_type; } ;


 int ELEVATOR_INSERT_BACK ;
 int ELEVATOR_INSERT_FRONT ;
 int REQ_TYPE_SPECIAL ;
 int __blk_run_queue (struct request_queue*) ;
 int __elv_add_request (struct request_queue*,struct request*,int,int ) ;
 int blk_queue_end_tag (struct request_queue*,struct request*) ;
 scalar_t__ blk_rq_tagged (struct request*) ;
 int drive_stat_acct (struct request*,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void blk_insert_request(struct request_queue *q, struct request *rq,
   int at_head, void *data)
{
 int where = at_head ? ELEVATOR_INSERT_FRONT : ELEVATOR_INSERT_BACK;
 unsigned long flags;






 rq->cmd_type = REQ_TYPE_SPECIAL;

 rq->special = data;

 spin_lock_irqsave(q->queue_lock, flags);




 if (blk_rq_tagged(rq))
  blk_queue_end_tag(q, rq);

 drive_stat_acct(rq, 1);
 __elv_add_request(q, rq, where, 0);
 __blk_run_queue(q);
 spin_unlock_irqrestore(q->queue_lock, flags);
}
