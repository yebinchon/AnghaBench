
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int max_sges; } ;
struct TYPE_4__ {int max_sges; } ;
struct ocrdma_qp {int cap_flags; int state; TYPE_2__ rq; TYPE_1__ sq; int max_inline_data; int qp_type; int rq_entry; int sq_entry; int q_lock; struct ocrdma_pd* pd; } ;
struct ocrdma_pd {int dummy; } ;
struct TYPE_6__ {int max_recv_sge; int max_send_sge; int max_inline_data; } ;
struct ib_qp_init_attr {TYPE_3__ cap; int qp_type; } ;


 int INIT_LIST_HEAD (int *) ;
 int OCRDMA_QPS_RST ;
 int OCRDMA_QP_INB_RD ;
 int OCRDMA_QP_INB_WR ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void ocrdma_set_qp_init_params(struct ocrdma_qp *qp,
          struct ocrdma_pd *pd,
          struct ib_qp_init_attr *attrs)
{
 qp->pd = pd;
 spin_lock_init(&qp->q_lock);
 INIT_LIST_HEAD(&qp->sq_entry);
 INIT_LIST_HEAD(&qp->rq_entry);

 qp->qp_type = attrs->qp_type;
 qp->cap_flags = OCRDMA_QP_INB_RD | OCRDMA_QP_INB_WR;
 qp->max_inline_data = attrs->cap.max_inline_data;
 qp->sq.max_sges = attrs->cap.max_send_sge;
 qp->rq.max_sges = attrs->cap.max_recv_sge;
 qp->state = OCRDMA_QPS_RST;
}
