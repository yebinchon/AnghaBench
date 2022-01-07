
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_queue {int current_q_offset; } ;
struct ehea_qp {struct hw_queue hw_rqueue1; } ;
struct ehea_cqe {int dummy; } ;


 int EHEA_SG_RQ1 ;
 struct ehea_cqe* hw_qeit_get_valid (struct hw_queue*) ;

__attribute__((used)) static inline struct ehea_cqe *ehea_poll_rq1(struct ehea_qp *qp, int *wqe_index)
{
 struct hw_queue *queue = &qp->hw_rqueue1;

 *wqe_index = (queue->current_q_offset) >> (7 + EHEA_SG_RQ1);
 return hw_qeit_get_valid(queue);
}
