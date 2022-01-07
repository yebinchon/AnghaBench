
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int * in_flight; struct elevator_queue* elevator; } ;
struct request {int cmd_flags; } ;
struct elevator_queue {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* elevator_completed_req_fn ) (struct request_queue*,struct request*) ;} ;


 int REQ_SORTED ;
 scalar_t__ blk_account_rq (struct request*) ;
 size_t rq_is_sync (struct request*) ;
 int stub1 (struct request_queue*,struct request*) ;

void elv_completed_request(struct request_queue *q, struct request *rq)
{
 struct elevator_queue *e = q->elevator;




 if (blk_account_rq(rq)) {
  q->in_flight[rq_is_sync(rq)]--;
  if ((rq->cmd_flags & REQ_SORTED) &&
      e->ops->elevator_completed_req_fn)
   e->ops->elevator_completed_req_fn(q, rq);
 }
}
