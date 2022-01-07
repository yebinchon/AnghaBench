
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfq_queue {int sort_list; } ;
struct cfq_data {TYPE_1__* queue; int busy_queues; struct cfq_queue* active_queue; } ;
struct TYPE_2__ {int queue_lock; } ;


 int RB_EMPTY_ROOT (int *) ;
 scalar_t__ cfq_cfqq_must_dispatch (struct cfq_queue*) ;
 int cfq_clear_cfqq_deep (struct cfq_queue*) ;
 int cfq_log (struct cfq_data*,char*) ;
 int cfq_schedule_dispatch (struct cfq_data*) ;
 int cfq_slice_expired (struct cfq_data*,int) ;
 scalar_t__ cfq_slice_used (struct cfq_queue*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void cfq_idle_slice_timer(unsigned long data)
{
 struct cfq_data *cfqd = (struct cfq_data *) data;
 struct cfq_queue *cfqq;
 unsigned long flags;
 int timed_out = 1;

 cfq_log(cfqd, "idle timer fired");

 spin_lock_irqsave(cfqd->queue->queue_lock, flags);

 cfqq = cfqd->active_queue;
 if (cfqq) {
  timed_out = 0;




  if (cfq_cfqq_must_dispatch(cfqq))
   goto out_kick;




  if (cfq_slice_used(cfqq))
   goto expire;





  if (!cfqd->busy_queues)
   goto out_cont;




  if (!RB_EMPTY_ROOT(&cfqq->sort_list))
   goto out_kick;




  cfq_clear_cfqq_deep(cfqq);
 }
expire:
 cfq_slice_expired(cfqd, timed_out);
out_kick:
 cfq_schedule_dispatch(cfqd);
out_cont:
 spin_unlock_irqrestore(cfqd->queue->queue_lock, flags);
}
