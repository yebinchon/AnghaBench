
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct elevator_queue* elevator; } ;
struct request {int dummy; } ;
struct elevator_queue {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* elevator_put_req_fn ) (struct request*) ;} ;


 int stub1 (struct request*) ;

void elv_put_request(struct request_queue *q, struct request *rq)
{
 struct elevator_queue *e = q->elevator;

 if (e->ops->elevator_put_req_fn)
  e->ops->elevator_put_req_fn(rq);
}
