
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {int dummy; } ;
struct cfq_data {int busy_queues; } ;


 int BUG_ON (int ) ;
 scalar_t__ __cfq_forced_dispatch_cfqq (struct cfq_queue*) ;
 int __cfq_set_active_queue (struct cfq_data*,struct cfq_queue*) ;
 struct cfq_queue* cfq_get_next_queue_forced (struct cfq_data*) ;
 int cfq_log (struct cfq_data*,char*,int) ;
 int cfq_slice_expired (struct cfq_data*,int ) ;

__attribute__((used)) static int cfq_forced_dispatch(struct cfq_data *cfqd)
{
 struct cfq_queue *cfqq;
 int dispatched = 0;


 cfq_slice_expired(cfqd, 0);
 while ((cfqq = cfq_get_next_queue_forced(cfqd)) != ((void*)0)) {
  __cfq_set_active_queue(cfqd, cfqq);
  dispatched += __cfq_forced_dispatch_cfqq(cfqq);
 }

 BUG_ON(cfqd->busy_queues);

 cfq_log(cfqd, "forced_dispatch=%d", dispatched);
 return dispatched;
}
