
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct elevator_queue* elevator; } ;
struct request {int dummy; } ;
struct elevator_queue {TYPE_1__* ops; } ;
struct TYPE_2__ {struct request* (* elevator_former_req_fn ) (struct request_queue*,struct request*) ;} ;


 struct request* stub1 (struct request_queue*,struct request*) ;

struct request *elv_former_request(struct request_queue *q, struct request *rq)
{
 struct elevator_queue *e = q->elevator;

 if (e->ops->elevator_former_req_fn)
  return e->ops->elevator_former_req_fn(q, rq);
 return ((void*)0);
}
