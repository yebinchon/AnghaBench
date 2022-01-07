
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct cfq_queue {struct request* next_rq; int sort_list; } ;
struct cfq_io_context {TYPE_1__* ioc; } ;
struct cfq_data {struct cfq_io_context* active_cic; int queue; } ;
struct TYPE_2__ {int refcount; } ;


 int BUG_ON (int ) ;
 int RB_EMPTY_ROOT (int *) ;
 struct cfq_io_context* RQ_CIC (struct request*) ;
 int atomic_long_inc (int *) ;
 struct request* cfq_check_fifo (struct cfq_queue*) ;
 int cfq_dispatch_insert (int ,struct request*) ;
 int cfq_may_dispatch (struct cfq_data*,struct cfq_queue*) ;

__attribute__((used)) static bool cfq_dispatch_request(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
 struct request *rq;

 BUG_ON(RB_EMPTY_ROOT(&cfqq->sort_list));

 if (!cfq_may_dispatch(cfqd, cfqq))
  return 0;




 rq = cfq_check_fifo(cfqq);
 if (!rq)
  rq = cfqq->next_rq;




 cfq_dispatch_insert(cfqd->queue, rq);

 if (!cfqd->active_cic) {
  struct cfq_io_context *cic = RQ_CIC(rq);

  atomic_long_inc(&cic->ioc->refcount);
  cfqd->active_cic = cic;
 }

 return 1;
}
