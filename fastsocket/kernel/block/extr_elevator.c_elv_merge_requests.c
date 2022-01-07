
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct request* last_merge; int nr_sorted; struct elevator_queue* elevator; } ;
struct request {int dummy; } ;
struct elevator_queue {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* elevator_merge_req_fn ) (struct request_queue*,struct request*,struct request*) ;} ;


 int elv_rqhash_del (struct request_queue*,struct request*) ;
 int elv_rqhash_reposition (struct request_queue*,struct request*) ;
 int stub1 (struct request_queue*,struct request*,struct request*) ;

void elv_merge_requests(struct request_queue *q, struct request *rq,
        struct request *next)
{
 struct elevator_queue *e = q->elevator;

 if (e->ops->elevator_merge_req_fn)
  e->ops->elevator_merge_req_fn(q, rq, next);

 elv_rqhash_reposition(q, rq);
 elv_rqhash_del(q, next);

 q->nr_sorted--;
 q->last_merge = rq;
}
