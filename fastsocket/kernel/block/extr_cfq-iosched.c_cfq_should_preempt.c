
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int cmd_flags; } ;
struct cfq_queue {scalar_t__ cfqg; int meta_pending; int sort_list; TYPE_1__* service_tree; } ;
struct cfq_data {scalar_t__ serving_type; int active_cic; struct cfq_queue* active_queue; } ;
struct TYPE_2__ {int count; } ;


 scalar_t__ RB_EMPTY_ROOT (int *) ;
 int REQ_META ;
 scalar_t__ SYNC_NOIDLE_WORKLOAD ;
 int cfq_cfqq_sync (struct cfq_queue*) ;
 int cfq_cfqq_wait_request (struct cfq_queue*) ;
 scalar_t__ cfq_class_idle (struct cfq_queue*) ;
 scalar_t__ cfq_class_rt (struct cfq_queue*) ;
 scalar_t__ cfq_rq_close (struct cfq_data*,struct cfq_queue*,struct request*) ;
 scalar_t__ cfq_slice_used (struct cfq_queue*) ;
 scalar_t__ cfqq_type (struct cfq_queue*) ;
 scalar_t__ rq_is_sync (struct request*) ;

__attribute__((used)) static bool
cfq_should_preempt(struct cfq_data *cfqd, struct cfq_queue *new_cfqq,
     struct request *rq)
{
 struct cfq_queue *cfqq;

 cfqq = cfqd->active_queue;
 if (!cfqq)
  return 0;

 if (cfq_class_idle(new_cfqq))
  return 0;

 if (cfq_class_idle(cfqq))
  return 1;





 if (rq_is_sync(rq) && !cfq_cfqq_sync(cfqq))
  return 1;

 if (new_cfqq->cfqg != cfqq->cfqg)
  return 0;

 if (cfq_slice_used(cfqq))
  return 1;


 if (cfqd->serving_type == SYNC_NOIDLE_WORKLOAD &&
     cfqq_type(new_cfqq) == SYNC_NOIDLE_WORKLOAD &&
     new_cfqq->service_tree->count == 2 &&
     RB_EMPTY_ROOT(&cfqq->sort_list))
  return 1;





 if ((rq->cmd_flags & REQ_META) && !cfqq->meta_pending)
  return 1;




 if (cfq_class_rt(new_cfqq) && !cfq_class_rt(cfqq))
  return 1;

 if (!cfqd->active_cic || !cfq_cfqq_wait_request(cfqq))
  return 0;





 if (cfq_rq_close(cfqd, cfqq, rq))
  return 1;

 return 0;
}
