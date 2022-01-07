
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct request* last_merge; struct elevator_queue* elevator; } ;
struct request {int dummy; } ;
struct elevator_queue {TYPE_1__* ops; } ;
struct bio {int bi_sector; } ;
struct TYPE_2__ {int (* elevator_merge_fn ) (struct request_queue*,struct request**,struct bio*) ;} ;


 int ELEVATOR_BACK_MERGE ;
 int ELEVATOR_NO_MERGE ;
 scalar_t__ blk_queue_nomerges (struct request_queue*) ;
 int blk_try_merge (struct request*,struct bio*) ;
 scalar_t__ elv_rq_merge_ok (struct request*,struct bio*) ;
 struct request* elv_rqhash_find (struct request_queue*,int ) ;
 int stub1 (struct request_queue*,struct request**,struct bio*) ;

int elv_merge(struct request_queue *q, struct request **req, struct bio *bio)
{
 struct elevator_queue *e = q->elevator;
 struct request *__rq;
 int ret;




 if (q->last_merge && elv_rq_merge_ok(q->last_merge, bio)) {
  ret = blk_try_merge(q->last_merge, bio);
  if (ret != ELEVATOR_NO_MERGE) {
   *req = q->last_merge;
   return ret;
  }
 }

 if (blk_queue_nomerges(q))
  return ELEVATOR_NO_MERGE;




 __rq = elv_rqhash_find(q, bio->bi_sector);
 if (__rq && elv_rq_merge_ok(__rq, bio)) {
  *req = __rq;
  return ELEVATOR_BACK_MERGE;
 }

 if (e->ops->elevator_merge_fn)
  return e->ops->elevator_merge_fn(q, req, bio);

 return ELEVATOR_NO_MERGE;
}
