
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfq_queue {scalar_t__ nr_sectors; scalar_t__ slice_dispatch; scalar_t__ slice_end; scalar_t__ allocated_slice; int dispatch_start; scalar_t__ slice_start; TYPE_1__* cfqg; } ;
struct cfq_data {struct cfq_queue* active_queue; int serving_type; int serving_prio; } ;
struct TYPE_2__ {int blkg; } ;


 int cfq_blkiocg_update_avg_queue_size_stats (int *) ;
 int cfq_clear_cfqq_fifo_expire (struct cfq_queue*) ;
 int cfq_clear_cfqq_must_alloc_slice (struct cfq_queue*) ;
 int cfq_clear_cfqq_must_dispatch (struct cfq_queue*) ;
 int cfq_clear_cfqq_wait_request (struct cfq_queue*) ;
 int cfq_del_timer (struct cfq_data*,struct cfq_queue*) ;
 int cfq_log_cfqq (struct cfq_data*,struct cfq_queue*,char*,int ,int ) ;
 int cfq_mark_cfqq_slice_new (struct cfq_queue*) ;
 int jiffies ;

__attribute__((used)) static void __cfq_set_active_queue(struct cfq_data *cfqd,
       struct cfq_queue *cfqq)
{
 if (cfqq) {
  cfq_log_cfqq(cfqd, cfqq, "set_active wl_prio:%d wl_type:%d",
    cfqd->serving_prio, cfqd->serving_type);
  cfq_blkiocg_update_avg_queue_size_stats(&cfqq->cfqg->blkg);
  cfqq->slice_start = 0;
  cfqq->dispatch_start = jiffies;
  cfqq->allocated_slice = 0;
  cfqq->slice_end = 0;
  cfqq->slice_dispatch = 0;
  cfqq->nr_sectors = 0;

  cfq_clear_cfqq_wait_request(cfqq);
  cfq_clear_cfqq_must_dispatch(cfqq);
  cfq_clear_cfqq_must_alloc_slice(cfqq);
  cfq_clear_cfqq_fifo_expire(cfqq);
  cfq_mark_cfqq_slice_new(cfqq);

  cfq_del_timer(cfqd, cfqq);
 }

 cfqd->active_queue = cfqq;
}
