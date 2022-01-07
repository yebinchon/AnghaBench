
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int * in_flight; } ;
struct request {int cmd_flags; } ;


 int ELEVATOR_INSERT_REQUEUE ;
 int REQ_SORTED ;
 int REQ_STARTED ;
 scalar_t__ blk_account_rq (struct request*) ;
 int elv_deactivate_rq (struct request_queue*,struct request*) ;
 int elv_insert (struct request_queue*,struct request*,int ) ;
 size_t rq_is_sync (struct request*) ;

void elv_requeue_request(struct request_queue *q, struct request *rq)
{




 if (blk_account_rq(rq)) {
  q->in_flight[rq_is_sync(rq)]--;
  if (rq->cmd_flags & REQ_SORTED)
   elv_deactivate_rq(q, rq);
 }

 rq->cmd_flags &= ~REQ_STARTED;

 elv_insert(q, rq, ELEVATOR_INSERT_REQUEUE);
}
