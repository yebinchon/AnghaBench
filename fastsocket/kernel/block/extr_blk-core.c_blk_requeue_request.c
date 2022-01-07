
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int dummy; } ;


 int BUG_ON (int ) ;
 int blk_clear_rq_complete (struct request*) ;
 int blk_delete_timer (struct request*) ;
 int blk_queue_end_tag (struct request_queue*,struct request*) ;
 int blk_queued_rq (struct request*) ;
 scalar_t__ blk_rq_tagged (struct request*) ;
 int elv_requeue_request (struct request_queue*,struct request*) ;
 int trace_block_rq_requeue (struct request_queue*,struct request*) ;

void blk_requeue_request(struct request_queue *q, struct request *rq)
{
 blk_delete_timer(rq);
 blk_clear_rq_complete(rq);
 trace_block_rq_requeue(q, rq);

 if (blk_rq_tagged(rq))
  blk_queue_end_tag(q, rq);

 BUG_ON(blk_queued_rq(rq));

 elv_requeue_request(q, rq);
}
