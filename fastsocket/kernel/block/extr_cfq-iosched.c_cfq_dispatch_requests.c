
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct cfq_queue {scalar_t__ slice_dispatch; scalar_t__ slice_end; } ;
struct cfq_data {int busy_queues; } ;
struct TYPE_2__ {struct cfq_data* elevator_data; } ;


 int cfq_cfqq_sync (struct cfq_queue*) ;
 scalar_t__ cfq_class_idle (struct cfq_queue*) ;
 int cfq_clear_cfqq_must_dispatch (struct cfq_queue*) ;
 int cfq_dispatch_request (struct cfq_data*,struct cfq_queue*) ;
 int cfq_forced_dispatch (struct cfq_data*) ;
 int cfq_log_cfqq (struct cfq_data*,struct cfq_queue*,char*) ;
 scalar_t__ cfq_prio_to_maxrq (struct cfq_data*,struct cfq_queue*) ;
 struct cfq_queue* cfq_select_queue (struct cfq_data*) ;
 int cfq_slice_expired (struct cfq_data*,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int cfq_dispatch_requests(struct request_queue *q, int force)
{
 struct cfq_data *cfqd = q->elevator->elevator_data;
 struct cfq_queue *cfqq;

 if (!cfqd->busy_queues)
  return 0;

 if (unlikely(force))
  return cfq_forced_dispatch(cfqd);

 cfqq = cfq_select_queue(cfqd);
 if (!cfqq)
  return 0;




 if (!cfq_dispatch_request(cfqd, cfqq))
  return 0;

 cfqq->slice_dispatch++;
 cfq_clear_cfqq_must_dispatch(cfqq);





 if (cfqd->busy_queues > 1 && ((!cfq_cfqq_sync(cfqq) &&
     cfqq->slice_dispatch >= cfq_prio_to_maxrq(cfqd, cfqq)) ||
     cfq_class_idle(cfqq))) {
  cfqq->slice_end = jiffies + 1;
  cfq_slice_expired(cfqd, 0);
 }

 cfq_log_cfqq(cfqd, cfqq, "dispatched a request");
 return 1;
}
