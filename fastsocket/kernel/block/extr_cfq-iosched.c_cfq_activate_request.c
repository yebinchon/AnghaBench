
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct request {int dummy; } ;
struct cfq_data {scalar_t__ last_position; int rq_in_driver; } ;
struct TYPE_2__ {struct cfq_data* elevator_data; } ;


 int RQ_CFQQ (struct request*) ;
 scalar_t__ blk_rq_pos (struct request*) ;
 scalar_t__ blk_rq_sectors (struct request*) ;
 int cfq_log_cfqq (struct cfq_data*,int ,char*,int ) ;

__attribute__((used)) static void cfq_activate_request(struct request_queue *q, struct request *rq)
{
 struct cfq_data *cfqd = q->elevator->elevator_data;

 cfqd->rq_in_driver++;
 cfq_log_cfqq(cfqd, RQ_CFQQ(rq), "activate rq, drv=%d",
      cfqd->rq_in_driver);

 cfqd->last_position = blk_rq_pos(rq) + blk_rq_sectors(rq);
}
