
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cfq_queue {scalar_t__ slice_end; TYPE_2__* cfqg; scalar_t__ dispatched; int sort_list; } ;
struct cfq_io_context {scalar_t__ ttime_mean; int ttime_samples; TYPE_1__* ioc; } ;
struct cfq_data {long cfq_group_idle; unsigned long cfq_slice_idle; int idle_slice_timer; struct cfq_io_context* active_cic; scalar_t__ hw_tag; int queue; struct cfq_queue* active_queue; } ;
struct TYPE_4__ {int nr_cfqq; int blkg; } ;
struct TYPE_3__ {int nr_tasks; } ;


 int RB_EMPTY_ROOT (int *) ;
 int WARN_ON (int) ;
 int atomic_read (int *) ;
 scalar_t__ blk_queue_nonrot (int ) ;
 int cfq_blkiocg_update_set_idle_time_stats (int *) ;
 int cfq_cfqq_slice_new (struct cfq_queue*) ;
 int cfq_log_cfqq (struct cfq_data*,struct cfq_queue*,char*,unsigned long,...) ;
 int cfq_mark_cfqq_wait_request (struct cfq_queue*) ;
 int cfq_should_idle (struct cfq_data*,struct cfq_queue*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ sample_valid (int ) ;

__attribute__((used)) static void cfq_arm_slice_timer(struct cfq_data *cfqd)
{
 struct cfq_queue *cfqq = cfqd->active_queue;
 struct cfq_io_context *cic;
 unsigned long sl, group_idle = 0;






 if (blk_queue_nonrot(cfqd->queue) && cfqd->hw_tag)
  return;

 WARN_ON(!RB_EMPTY_ROOT(&cfqq->sort_list));
 WARN_ON(cfq_cfqq_slice_new(cfqq));




 if (!cfq_should_idle(cfqd, cfqq)) {

  if (cfqd->cfq_group_idle)
   group_idle = cfqd->cfq_group_idle;
  else
   return;
 }




 if (cfqq->dispatched)
  return;




 cic = cfqd->active_cic;
 if (!cic || !atomic_read(&cic->ioc->nr_tasks))
  return;






 if (sample_valid(cic->ttime_samples) &&
     (cfqq->slice_end - jiffies < cic->ttime_mean)) {
  cfq_log_cfqq(cfqd, cfqq, "Not idling. think_time:%d",
    cic->ttime_mean);
  return;
 }


 if (group_idle && cfqq->cfqg->nr_cfqq > 1)
  return;

 cfq_mark_cfqq_wait_request(cfqq);

 if (group_idle)
  sl = cfqd->cfq_group_idle;
 else
  sl = cfqd->cfq_slice_idle;

 mod_timer(&cfqd->idle_slice_timer, jiffies + sl);
 cfq_blkiocg_update_set_idle_time_stats(&cfqq->cfqg->blkg);
 cfq_log_cfqq(cfqd, cfqq, "arm_idle: %lu group_idle: %d", sl,
   group_idle ? 1 : 0);
}
