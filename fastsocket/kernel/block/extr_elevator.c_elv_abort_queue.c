
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next; } ;
struct request_queue {TYPE_1__ queue_head; } ;
struct request {int cmd_flags; } ;


 int EIO ;
 int REQ_QUIET ;
 int __blk_end_request_all (struct request*,int ) ;
 int blk_abort_flushes (struct request_queue*) ;
 int blk_start_request (struct request*) ;
 int list_empty (TYPE_1__*) ;
 struct request* list_entry_rq (int ) ;
 int trace_block_rq_abort (struct request_queue*,struct request*) ;

void elv_abort_queue(struct request_queue *q)
{
 struct request *rq;

 blk_abort_flushes(q);

 while (!list_empty(&q->queue_head)) {
  rq = list_entry_rq(q->queue_head.next);
  rq->cmd_flags |= REQ_QUIET;
  trace_block_rq_abort(q, rq);




  blk_start_request(rq);
  __blk_end_request_all(rq, -EIO);
 }
}
