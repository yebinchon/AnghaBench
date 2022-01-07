
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct elevator_queue* elevator; } ;
struct request {int dummy; } ;
struct elevator_queue {TYPE_1__* ops; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int (* elevator_bio_merged_fn ) (struct request_queue*,struct request*,struct bio*) ;} ;


 int stub1 (struct request_queue*,struct request*,struct bio*) ;

void elv_bio_merged(struct request_queue *q, struct request *rq,
   struct bio *bio)
{
 struct elevator_queue *e = q->elevator;

 if (e->ops->elevator_bio_merged_fn)
  e->ops->elevator_bio_merged_fn(q, rq, bio);
}
