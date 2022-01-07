
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ah; } ;
struct TYPE_8__ {TYPE_1__ ud; } ;
struct TYPE_9__ {unsigned int num_sge; TYPE_2__ wr; } ;
struct qib_swqe {TYPE_3__ wr; struct qib_sge* sg_list; } ;
struct qib_sge {int * mr; } ;
struct TYPE_10__ {scalar_t__ qp_type; } ;
struct qib_qp {scalar_t__ s_last; scalar_t__ s_head; scalar_t__ s_size; struct qib_ack_entry* s_ack_queue; TYPE_4__ ibqp; int * s_rdma_mr; int r_sge; int s_rdma_read_sge; int r_aflags; } ;
struct TYPE_11__ {int * mr; } ;
struct qib_ack_entry {scalar_t__ opcode; TYPE_5__ rdma_sge; } ;
struct TYPE_12__ {int refcount; } ;


 unsigned int ARRAY_SIZE (struct qib_ack_entry*) ;
 scalar_t__ IB_OPCODE_RC_RDMA_READ_REQUEST ;
 scalar_t__ IB_QPT_GSI ;
 scalar_t__ IB_QPT_RC ;
 scalar_t__ IB_QPT_SMI ;
 scalar_t__ IB_QPT_UD ;
 int QIB_R_REWIND_SGE ;
 int atomic_dec (int *) ;
 struct qib_swqe* get_swqe_ptr (struct qib_qp*,scalar_t__) ;
 int qib_put_mr (int *) ;
 int qib_put_ss (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 TYPE_6__* to_iah (int ) ;

__attribute__((used)) static void clear_mr_refs(struct qib_qp *qp, int clr_sends)
{
 unsigned n;

 if (test_and_clear_bit(QIB_R_REWIND_SGE, &qp->r_aflags))
  qib_put_ss(&qp->s_rdma_read_sge);

 qib_put_ss(&qp->r_sge);

 if (clr_sends) {
  while (qp->s_last != qp->s_head) {
   struct qib_swqe *wqe = get_swqe_ptr(qp, qp->s_last);
   unsigned i;

   for (i = 0; i < wqe->wr.num_sge; i++) {
    struct qib_sge *sge = &wqe->sg_list[i];

    qib_put_mr(sge->mr);
   }
   if (qp->ibqp.qp_type == IB_QPT_UD ||
       qp->ibqp.qp_type == IB_QPT_SMI ||
       qp->ibqp.qp_type == IB_QPT_GSI)
    atomic_dec(&to_iah(wqe->wr.wr.ud.ah)->refcount);
   if (++qp->s_last >= qp->s_size)
    qp->s_last = 0;
  }
  if (qp->s_rdma_mr) {
   qib_put_mr(qp->s_rdma_mr);
   qp->s_rdma_mr = ((void*)0);
  }
 }

 if (qp->ibqp.qp_type != IB_QPT_RC)
  return;

 for (n = 0; n < ARRAY_SIZE(qp->s_ack_queue); n++) {
  struct qib_ack_entry *e = &qp->s_ack_queue[n];

  if (e->opcode == IB_OPCODE_RC_RDMA_READ_REQUEST &&
      e->rdma_sge.mr) {
   qib_put_mr(e->rdma_sge.mr);
   e->rdma_sge.mr = ((void*)0);
  }
 }
}
