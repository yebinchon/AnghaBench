
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ opcode; } ;
struct qib_swqe {scalar_t__ lpsn; TYPE_1__ wr; } ;
struct qib_qp {scalar_t__ s_last; scalar_t__ s_size; scalar_t__ s_tail; scalar_t__ s_sending_psn; } ;


 scalar_t__ IB_WR_RDMA_READ ;
 struct qib_swqe* get_swqe_ptr (struct qib_qp*,scalar_t__) ;
 scalar_t__ qib_cmp24 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void reset_sending_psn(struct qib_qp *qp, u32 psn)
{
 struct qib_swqe *wqe;
 u32 n = qp->s_last;


 for (;;) {
  wqe = get_swqe_ptr(qp, n);
  if (qib_cmp24(psn, wqe->lpsn) <= 0) {
   if (wqe->wr.opcode == IB_WR_RDMA_READ)
    qp->s_sending_psn = wqe->lpsn + 1;
   else
    qp->s_sending_psn = psn + 1;
   break;
  }
  if (++n == qp->s_size)
   n = 0;
  if (n == qp->s_tail)
   break;
 }
}
