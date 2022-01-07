
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int queue_lock; TYPE_1__* elevator; } ;
struct as_io_context {scalar_t__ ttime_samples; int state; } ;
struct as_data {scalar_t__ antic_status; int exit_prob; int exit_no_coop; TYPE_2__* io_context; int antic_work; } ;
struct TYPE_4__ {int lock; struct as_io_context* aic; } ;
struct TYPE_3__ {struct as_data* elevator_data; } ;


 scalar_t__ ANTIC_FINISHED ;
 scalar_t__ ANTIC_WAIT_NEXT ;
 scalar_t__ ANTIC_WAIT_REQ ;
 int AS_TASK_RUNNING ;
 int kblockd_schedule_work (struct request_queue*,int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void as_antic_timeout(unsigned long data)
{
 struct request_queue *q = (struct request_queue *)data;
 struct as_data *ad = q->elevator->elevator_data;
 unsigned long flags;

 spin_lock_irqsave(q->queue_lock, flags);
 if (ad->antic_status == ANTIC_WAIT_REQ
   || ad->antic_status == ANTIC_WAIT_NEXT) {
  struct as_io_context *aic;
  spin_lock(&ad->io_context->lock);
  aic = ad->io_context->aic;

  ad->antic_status = ANTIC_FINISHED;
  kblockd_schedule_work(q, &ad->antic_work);

  if (aic->ttime_samples == 0) {

   ad->exit_prob = (7*ad->exit_prob + 256)/8;
  }
  if (!test_bit(AS_TASK_RUNNING, &aic->state)) {

   ad->exit_no_coop = (7*ad->exit_no_coop + 256)/8;
  }
  spin_unlock(&ad->io_context->lock);
 }
 spin_unlock_irqrestore(q->queue_lock, flags);
}
