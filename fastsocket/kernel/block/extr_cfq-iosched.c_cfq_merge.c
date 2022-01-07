
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct request {int dummy; } ;
struct cfq_data {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct cfq_data* elevator_data; } ;


 int ELEVATOR_FRONT_MERGE ;
 int ELEVATOR_NO_MERGE ;
 struct request* cfq_find_rq_fmerge (struct cfq_data*,struct bio*) ;
 scalar_t__ elv_rq_merge_ok (struct request*,struct bio*) ;

__attribute__((used)) static int cfq_merge(struct request_queue *q, struct request **req,
       struct bio *bio)
{
 struct cfq_data *cfqd = q->elevator->elevator_data;
 struct request *__rq;

 __rq = cfq_find_rq_fmerge(cfqd, bio);
 if (__rq && elv_rq_merge_ok(__rq, bio)) {
  *req = __rq;
  return ELEVATOR_FRONT_MERGE;
 }

 return ELEVATOR_NO_MERGE;
}
