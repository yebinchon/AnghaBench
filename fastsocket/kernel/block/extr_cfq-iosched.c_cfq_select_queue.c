
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfq_queue {TYPE_1__* cfqg; scalar_t__ dispatched; int new_cfqq; int sort_list; } ;
struct cfq_data {scalar_t__ cfq_group_idle; int idle_slice_timer; int rq_queued; struct cfq_queue* active_queue; } ;
struct TYPE_2__ {int nr_cfqq; scalar_t__ dispatched; } ;


 scalar_t__ RB_EMPTY_ROOT (int *) ;
 int cfq_cfqq_must_dispatch (struct cfq_queue*) ;
 scalar_t__ cfq_cfqq_wait_busy (struct cfq_queue*) ;
 int cfq_choose_cfqg (struct cfq_data*) ;
 struct cfq_queue* cfq_close_cooperator (struct cfq_data*,struct cfq_queue*) ;
 struct cfq_queue* cfq_set_active_queue (struct cfq_data*,struct cfq_queue*) ;
 int cfq_setup_merge (struct cfq_queue*,struct cfq_queue*) ;
 scalar_t__ cfq_should_idle (struct cfq_data*,struct cfq_queue*) ;
 int cfq_slice_expired (struct cfq_data*,int ) ;
 scalar_t__ cfq_slice_used (struct cfq_queue*) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static struct cfq_queue *cfq_select_queue(struct cfq_data *cfqd)
{
 struct cfq_queue *cfqq, *new_cfqq = ((void*)0);

 cfqq = cfqd->active_queue;
 if (!cfqq)
  goto new_queue;

 if (!cfqd->rq_queued)
  return ((void*)0);




 if (cfq_cfqq_wait_busy(cfqq) && !RB_EMPTY_ROOT(&cfqq->sort_list))
  goto expire;




 if (cfq_slice_used(cfqq) && !cfq_cfqq_must_dispatch(cfqq)) {
  if (cfqq->cfqg->nr_cfqq == 1 && RB_EMPTY_ROOT(&cfqq->sort_list)
      && cfqq->dispatched && cfq_should_idle(cfqd, cfqq)) {
   cfqq = ((void*)0);
   goto keep_queue;
  } else
   goto check_group_idle;
 }





 if (!RB_EMPTY_ROOT(&cfqq->sort_list))
  goto keep_queue;







 new_cfqq = cfq_close_cooperator(cfqd, cfqq);
 if (new_cfqq) {
  if (!cfqq->new_cfqq)
   cfq_setup_merge(cfqq, new_cfqq);
  goto expire;
 }






 if (timer_pending(&cfqd->idle_slice_timer)) {
  cfqq = ((void*)0);
  goto keep_queue;
 }

 if (cfqq->dispatched && cfq_should_idle(cfqd, cfqq)) {
  cfqq = ((void*)0);
  goto keep_queue;
 }





check_group_idle:
 if (cfqd->cfq_group_idle && cfqq->cfqg->nr_cfqq == 1
     && cfqq->cfqg->dispatched) {
  cfqq = ((void*)0);
  goto keep_queue;
 }

expire:
 cfq_slice_expired(cfqd, 0);
new_queue:




 if (!new_cfqq)
  cfq_choose_cfqg(cfqd);

 cfqq = cfq_set_active_queue(cfqd, new_cfqq);
keep_queue:
 return cfqq;
}
