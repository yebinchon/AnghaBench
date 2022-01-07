
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct ehca_qp {scalar_t__ ext_type; struct list_head rq_err_node; TYPE_2__* recv_cq; struct list_head sq_err_node; TYPE_1__* send_cq; } ;
struct TYPE_4__ {struct list_head rqp_err_list; } ;
struct TYPE_3__ {struct list_head sqp_err_list; } ;


 scalar_t__ EQPT_LLQP ;
 int list_add_tail (struct list_head*,struct list_head*) ;
 scalar_t__ list_empty (struct list_head*) ;

void ehca_add_to_err_list(struct ehca_qp *qp, int on_sq)
{
 struct list_head *list, *node;


 if (qp->ext_type == EQPT_LLQP)
  return;

 if (on_sq) {
  list = &qp->send_cq->sqp_err_list;
  node = &qp->sq_err_node;
 } else {
  list = &qp->recv_cq->rqp_err_list;
  node = &qp->rq_err_node;
 }

 if (list_empty(node))
  list_add_tail(node, list);

 return;
}
