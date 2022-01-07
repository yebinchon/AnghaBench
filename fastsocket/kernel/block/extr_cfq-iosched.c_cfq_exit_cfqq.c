
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {struct cfq_queue* new_cfqq; } ;
struct cfq_data {struct cfq_queue* active_queue; } ;


 int WARN (int,char*) ;
 int __cfq_slice_expired (struct cfq_data*,struct cfq_queue*,int ) ;
 int cfq_put_queue (struct cfq_queue*) ;
 int cfq_schedule_dispatch (struct cfq_data*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void cfq_exit_cfqq(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
 struct cfq_queue *__cfqq, *next;

 if (unlikely(cfqq == cfqd->active_queue)) {
  __cfq_slice_expired(cfqd, cfqq, 0);
  cfq_schedule_dispatch(cfqd);
 }






 __cfqq = cfqq->new_cfqq;
 while (__cfqq) {
  if (__cfqq == cfqq) {
   WARN(1, "cfqq->new_cfqq loop detected\n");
   break;
  }
  next = __cfqq->new_cfqq;
  cfq_put_queue(__cfqq);
  __cfqq = next;
 }

 cfq_put_queue(cfqq);
}
