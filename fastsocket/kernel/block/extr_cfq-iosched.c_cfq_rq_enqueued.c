
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int cmd_flags; } ;
struct cfq_queue {TYPE_1__* cfqg; scalar_t__ last_request_pos; int meta_pending; } ;
struct cfq_io_context {int dummy; } ;
struct cfq_data {int busy_queues; int queue; struct cfq_queue* active_queue; int rq_queued; } ;
struct TYPE_2__ {int blkg; } ;


 scalar_t__ PAGE_CACHE_SIZE ;
 int REQ_META ;
 struct cfq_io_context* RQ_CIC (struct request*) ;
 int __blk_run_queue (int ) ;
 scalar_t__ blk_rq_bytes (struct request*) ;
 scalar_t__ blk_rq_pos (struct request*) ;
 scalar_t__ blk_rq_sectors (struct request*) ;
 int cfq_blkiocg_update_idle_time_stats (int *) ;
 scalar_t__ cfq_cfqq_wait_request (struct cfq_queue*) ;
 int cfq_clear_cfqq_wait_request (struct cfq_queue*) ;
 int cfq_del_timer (struct cfq_data*,struct cfq_queue*) ;
 int cfq_mark_cfqq_must_dispatch (struct cfq_queue*) ;
 int cfq_preempt_queue (struct cfq_data*,struct cfq_queue*) ;
 scalar_t__ cfq_should_preempt (struct cfq_data*,struct cfq_queue*,struct request*) ;
 int cfq_update_idle_window (struct cfq_data*,struct cfq_queue*,struct cfq_io_context*) ;
 int cfq_update_io_seektime (struct cfq_data*,struct cfq_queue*,struct request*) ;
 int cfq_update_io_thinktime (struct cfq_data*,struct cfq_io_context*) ;

__attribute__((used)) static void
cfq_rq_enqueued(struct cfq_data *cfqd, struct cfq_queue *cfqq,
  struct request *rq)
{
 struct cfq_io_context *cic = RQ_CIC(rq);

 cfqd->rq_queued++;
 if (rq->cmd_flags & REQ_META)
  cfqq->meta_pending++;

 cfq_update_io_thinktime(cfqd, cic);
 cfq_update_io_seektime(cfqd, cfqq, rq);
 cfq_update_idle_window(cfqd, cfqq, cic);

 cfqq->last_request_pos = blk_rq_pos(rq) + blk_rq_sectors(rq);

 if (cfqq == cfqd->active_queue) {
  if (cfq_cfqq_wait_request(cfqq)) {
   if (blk_rq_bytes(rq) > PAGE_CACHE_SIZE ||
       cfqd->busy_queues > 1) {
    cfq_del_timer(cfqd, cfqq);
    cfq_clear_cfqq_wait_request(cfqq);
    __blk_run_queue(cfqd->queue);
   } else {
    cfq_blkiocg_update_idle_time_stats(
      &cfqq->cfqg->blkg);
    cfq_mark_cfqq_must_dispatch(cfqq);
   }
  }
 } else if (cfq_should_preempt(cfqd, cfqq, rq)) {






  cfq_preempt_queue(cfqd, cfqq);
  __blk_run_queue(cfqd->queue);
 }
}
