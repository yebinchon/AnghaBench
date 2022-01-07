
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request_queue {TYPE_2__* elevator; } ;
struct request {int dummy; } ;
struct cfq_queue {TYPE_1__* cfqg; int nr_sectors; int dispatched; int next_rq; } ;
struct cfq_data {int * rq_in_flight; } ;
struct TYPE_6__ {int dispatched; } ;
struct TYPE_5__ {struct cfq_data* elevator_data; } ;
struct TYPE_4__ {int blkg; } ;


 TYPE_3__* RQ_CFQG (struct request*) ;
 struct cfq_queue* RQ_CFQQ (struct request*) ;
 int blk_rq_bytes (struct request*) ;
 scalar_t__ blk_rq_sectors (struct request*) ;
 int cfq_blkiocg_update_dispatch_stats (int *,int ,int ,int ) ;
 size_t cfq_cfqq_sync (struct cfq_queue*) ;
 int cfq_find_next_rq (struct cfq_data*,struct cfq_queue*,struct request*) ;
 int cfq_log_cfqq (struct cfq_data*,struct cfq_queue*,char*) ;
 int cfq_remove_request (struct request*) ;
 int elv_dispatch_sort (struct request_queue*,struct request*) ;
 int rq_data_dir (struct request*) ;
 int rq_is_sync (struct request*) ;

__attribute__((used)) static void cfq_dispatch_insert(struct request_queue *q, struct request *rq)
{
 struct cfq_data *cfqd = q->elevator->elevator_data;
 struct cfq_queue *cfqq = RQ_CFQQ(rq);

 cfq_log_cfqq(cfqd, cfqq, "dispatch_insert");

 cfqq->next_rq = cfq_find_next_rq(cfqd, cfqq, rq);
 cfq_remove_request(rq);
 cfqq->dispatched++;
 (RQ_CFQG(rq))->dispatched++;
 elv_dispatch_sort(q, rq);

 cfqd->rq_in_flight[cfq_cfqq_sync(cfqq)]++;
 cfqq->nr_sectors += blk_rq_sectors(rq);
 cfq_blkiocg_update_dispatch_stats(&cfqq->cfqg->blkg, blk_rq_bytes(rq),
     rq_data_dir(rq), rq_is_sync(rq));
}
