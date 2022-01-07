
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_queue {int dummy; } ;
struct ehea_rwqe {int dummy; } ;
struct ehea_qp {struct hw_queue hw_rqueue3; struct hw_queue hw_rqueue2; struct hw_queue hw_rqueue1; } ;


 struct ehea_rwqe* hw_qeit_get_inc (struct hw_queue*) ;

__attribute__((used)) static inline struct ehea_rwqe *ehea_get_next_rwqe(struct ehea_qp *qp,
         int rq_nr)
{
 struct hw_queue *queue;

 if (rq_nr == 1)
  queue = &qp->hw_rqueue1;
 else if (rq_nr == 2)
  queue = &qp->hw_rqueue2;
 else
  queue = &qp->hw_rqueue3;

 return hw_qeit_get_inc(queue);
}
