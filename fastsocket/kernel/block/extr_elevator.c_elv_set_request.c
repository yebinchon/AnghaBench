
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct elevator_queue* elevator; } ;
struct request {int ** elevator_private; } ;
struct elevator_queue {TYPE_1__* ops; } ;
typedef int gfp_t ;
struct TYPE_2__ {int (* elevator_set_req_fn ) (struct request_queue*,struct request*,int ) ;} ;


 int stub1 (struct request_queue*,struct request*,int ) ;

int elv_set_request(struct request_queue *q, struct request *rq, gfp_t gfp_mask)
{
 struct elevator_queue *e = q->elevator;

 if (e->ops->elevator_set_req_fn)
  return e->ops->elevator_set_req_fn(q, rq, gfp_mask);

 rq->elevator_private[0] = ((void*)0);
 return 0;
}
