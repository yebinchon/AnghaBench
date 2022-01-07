
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct request* last_merge; struct elevator_queue* elevator; } ;
struct request {int dummy; } ;
struct elevator_queue {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* elevator_merged_fn ) (struct request_queue*,struct request*,int) ;} ;


 int ELEVATOR_BACK_MERGE ;
 int elv_rqhash_reposition (struct request_queue*,struct request*) ;
 int stub1 (struct request_queue*,struct request*,int) ;

void elv_merged_request(struct request_queue *q, struct request *rq, int type)
{
 struct elevator_queue *e = q->elevator;

 if (e->ops->elevator_merged_fn)
  e->ops->elevator_merged_fn(q, rq, type);

 if (type == ELEVATOR_BACK_MERGE)
  elv_rqhash_reposition(q, rq);

 q->last_merge = rq;
}
