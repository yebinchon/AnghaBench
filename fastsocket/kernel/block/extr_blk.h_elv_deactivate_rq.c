
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct elevator_queue* elevator; } ;
struct request {int dummy; } ;
struct elevator_queue {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* elevator_deactivate_req_fn ) (struct request_queue*,struct request*) ;} ;


 int stub1 (struct request_queue*,struct request*) ;

__attribute__((used)) static inline void elv_deactivate_rq(struct request_queue *q, struct request *rq)
{
 struct elevator_queue *e = q->elevator;

 if (e->ops->elevator_deactivate_req_fn)
  e->ops->elevator_deactivate_req_fn(q, rq);
}
