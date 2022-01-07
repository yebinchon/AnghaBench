
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int queue_lock; TYPE_1__* elevator; } ;
struct request {struct cfq_queue** elevator_private; } ;
struct cfq_queue {int ioc; int cfqg; int ref; int * allocated; scalar_t__ new_cfqq; } ;
struct cfq_io_context {int ioc; int cfqg; int ref; int * allocated; scalar_t__ new_cfqq; } ;
struct cfq_data {struct cfq_queue oom_cfqq; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct cfq_data* elevator_data; } ;


 int __GFP_WAIT ;
 scalar_t__ cfq_cfqq_coop (struct cfq_queue*) ;
 scalar_t__ cfq_cfqq_split_coop (struct cfq_queue*) ;
 struct cfq_queue* cfq_get_io_context (struct cfq_data*,int) ;
 struct cfq_queue* cfq_get_queue (struct cfq_data*,int const,int ,int) ;
 int cfq_log (struct cfq_data*,char*) ;
 int cfq_log_cfqq (struct cfq_data*,struct cfq_queue*,char*) ;
 struct cfq_queue* cfq_merge_cfqqs (struct cfq_data*,struct cfq_queue*,struct cfq_queue*) ;
 struct cfq_queue* cfq_ref_get_cfqg (int ) ;
 int cfq_schedule_dispatch (struct cfq_data*) ;
 int cic_set_cfqq (struct cfq_queue*,struct cfq_queue*,int const) ;
 struct cfq_queue* cic_to_cfqq (struct cfq_queue*,int const) ;
 int might_sleep_if (int) ;
 int put_io_context (int ) ;
 int rq_data_dir (struct request*) ;
 int rq_is_sync (struct request*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct cfq_queue* split_cfqq (struct cfq_queue*,struct cfq_queue*) ;

__attribute__((used)) static int
cfq_set_request(struct request_queue *q, struct request *rq, gfp_t gfp_mask)
{
 struct cfq_data *cfqd = q->elevator->elevator_data;
 struct cfq_io_context *cic;
 const int rw = rq_data_dir(rq);
 const bool is_sync = rq_is_sync(rq);
 struct cfq_queue *cfqq;
 unsigned long flags;

 might_sleep_if(gfp_mask & __GFP_WAIT);

 cic = cfq_get_io_context(cfqd, gfp_mask);

 spin_lock_irqsave(q->queue_lock, flags);

 if (!cic)
  goto queue_fail;

new_queue:
 cfqq = cic_to_cfqq(cic, is_sync);
 if (!cfqq || cfqq == &cfqd->oom_cfqq) {
  cfqq = cfq_get_queue(cfqd, is_sync, cic->ioc, gfp_mask);
  cic_set_cfqq(cic, cfqq, is_sync);
 } else {



  if (cfq_cfqq_coop(cfqq) && cfq_cfqq_split_coop(cfqq)) {
   cfq_log_cfqq(cfqd, cfqq, "breaking apart cfqq");
   cfqq = split_cfqq(cic, cfqq);
   if (!cfqq)
    goto new_queue;
  }







  if (cfqq->new_cfqq)
   cfqq = cfq_merge_cfqqs(cfqd, cic, cfqq);
 }

 cfqq->allocated[rw]++;
 cfqq->ref++;

 rq->elevator_private[0] = cic;
 rq->elevator_private[1] = cfqq;
 rq->elevator_private[2] = cfq_ref_get_cfqg(cfqq->cfqg);

 spin_unlock_irqrestore(q->queue_lock, flags);

 return 0;

queue_fail:
 if (cic)
  put_io_context(cic->ioc);

 cfq_schedule_dispatch(cfqd);
 spin_unlock_irqrestore(q->queue_lock, flags);
 cfq_log(cfqd, "set_request fail");
 return 1;
}
