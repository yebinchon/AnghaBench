
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct request_queue {TYPE_2__* elevator; } ;
struct request {int queuelist; } ;
struct cfq_queue {int fifo; } ;
struct cfq_data {TYPE_1__* serving_group; scalar_t__* cfq_fifo_expire; } ;
struct TYPE_8__ {int blkg; } ;
struct TYPE_7__ {int ioc; } ;
struct TYPE_6__ {struct cfq_data* elevator_data; } ;
struct TYPE_5__ {int blkg; } ;


 TYPE_4__* RQ_CFQG (struct request*) ;
 struct cfq_queue* RQ_CFQQ (struct request*) ;
 TYPE_3__* RQ_CIC (struct request*) ;
 int cfq_add_rq_rb (struct request*) ;
 int cfq_blkiocg_update_io_add_stats (int *,int *,int ,size_t) ;
 int cfq_init_prio_data (struct cfq_queue*,int ) ;
 int cfq_log_cfqq (struct cfq_data*,struct cfq_queue*,char*) ;
 int cfq_rq_enqueued (struct cfq_data*,struct cfq_queue*,struct request*) ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;
 int rq_data_dir (struct request*) ;
 size_t rq_is_sync (struct request*) ;
 int rq_set_fifo_time (struct request*,scalar_t__) ;

__attribute__((used)) static void cfq_insert_request(struct request_queue *q, struct request *rq)
{
 struct cfq_data *cfqd = q->elevator->elevator_data;
 struct cfq_queue *cfqq = RQ_CFQQ(rq);

 cfq_log_cfqq(cfqd, cfqq, "insert_request");
 cfq_init_prio_data(cfqq, RQ_CIC(rq)->ioc);

 rq_set_fifo_time(rq, jiffies + cfqd->cfq_fifo_expire[rq_is_sync(rq)]);
 list_add_tail(&rq->queuelist, &cfqq->fifo);
 cfq_add_rq_rb(rq);
 cfq_blkiocg_update_io_add_stats(&(RQ_CFQG(rq))->blkg,
   &cfqd->serving_group->blkg, rq_data_dir(rq),
   rq_is_sync(rq));
 cfq_rq_enqueued(cfqd, cfqq, rq);
}
