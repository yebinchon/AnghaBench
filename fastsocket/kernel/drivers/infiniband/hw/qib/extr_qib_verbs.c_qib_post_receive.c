
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qib_rwqe {int num_sge; int * sg_list; int wr_id; } ;
struct qib_rwq {scalar_t__ head; scalar_t__ tail; } ;
struct TYPE_2__ {unsigned int max_sge; scalar_t__ size; int lock; struct qib_rwq* wq; } ;
struct qib_qp {size_t state; TYPE_1__ r_rq; } ;
struct ib_recv_wr {int num_sge; int * sg_list; int wr_id; struct ib_recv_wr* next; } ;
struct ib_qp {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int QIB_POST_RECV_OK ;
 struct qib_rwqe* get_rwqe_ptr (TYPE_1__*,scalar_t__) ;
 int* ib_qib_state_ops ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct qib_qp* to_iqp (struct ib_qp*) ;

__attribute__((used)) static int qib_post_receive(struct ib_qp *ibqp, struct ib_recv_wr *wr,
       struct ib_recv_wr **bad_wr)
{
 struct qib_qp *qp = to_iqp(ibqp);
 struct qib_rwq *wq = qp->r_rq.wq;
 unsigned long flags;
 int ret;


 if (!(ib_qib_state_ops[qp->state] & QIB_POST_RECV_OK) || !wq) {
  *bad_wr = wr;
  ret = -EINVAL;
  goto bail;
 }

 for (; wr; wr = wr->next) {
  struct qib_rwqe *wqe;
  u32 next;
  int i;

  if ((unsigned) wr->num_sge > qp->r_rq.max_sge) {
   *bad_wr = wr;
   ret = -EINVAL;
   goto bail;
  }

  spin_lock_irqsave(&qp->r_rq.lock, flags);
  next = wq->head + 1;
  if (next >= qp->r_rq.size)
   next = 0;
  if (next == wq->tail) {
   spin_unlock_irqrestore(&qp->r_rq.lock, flags);
   *bad_wr = wr;
   ret = -ENOMEM;
   goto bail;
  }

  wqe = get_rwqe_ptr(&qp->r_rq, wq->head);
  wqe->wr_id = wr->wr_id;
  wqe->num_sge = wr->num_sge;
  for (i = 0; i < wr->num_sge; i++)
   wqe->sg_list[i] = wr->sg_list[i];

  smp_wmb();
  wq->head = next;
  spin_unlock_irqrestore(&qp->r_rq.lock, flags);
 }
 ret = 0;

bail:
 return ret;
}
