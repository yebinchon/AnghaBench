
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct elevator_queue* elevator; } ;
struct request {struct request_queue* q; } ;
struct elevator_queue {TYPE_1__* ops; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int (* elevator_allow_merge_fn ) (struct request_queue*,struct request*,struct bio*) ;} ;


 int stub1 (struct request_queue*,struct request*,struct bio*) ;

__attribute__((used)) static int elv_iosched_allow_merge(struct request *rq, struct bio *bio)
{
 struct request_queue *q = rq->q;
 struct elevator_queue *e = q->elevator;

 if (e->ops->elevator_allow_merge_fn)
  return e->ops->elevator_allow_merge_fn(q, rq, bio);

 return 1;
}
