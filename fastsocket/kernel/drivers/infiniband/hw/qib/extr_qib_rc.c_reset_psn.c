
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ opcode; } ;
struct qib_swqe {TYPE_1__ wr; int psn; } ;
struct qib_qp {scalar_t__ s_acked; scalar_t__ s_size; scalar_t__ s_tail; scalar_t__ s_psn; scalar_t__ s_sending_psn; int s_flags; int s_sending_hpsn; void* s_state; scalar_t__ s_cur; } ;







 void* OP (int ) ;
 int QIB_S_WAIT_PSN ;
 int RDMA_READ_RESPONSE_FIRST ;
 int RDMA_READ_RESPONSE_LAST ;
 int RDMA_READ_RESPONSE_MIDDLE ;
 int SEND_LAST ;
 struct qib_swqe* get_swqe_ptr (struct qib_qp*,scalar_t__) ;
 int qib_cmp24 (scalar_t__,int ) ;

__attribute__((used)) static void reset_psn(struct qib_qp *qp, u32 psn)
{
 u32 n = qp->s_acked;
 struct qib_swqe *wqe = get_swqe_ptr(qp, n);
 u32 opcode;

 qp->s_cur = n;





 if (qib_cmp24(psn, wqe->psn) <= 0) {
  qp->s_state = OP(SEND_LAST);
  goto done;
 }


 opcode = wqe->wr.opcode;
 for (;;) {
  int diff;

  if (++n == qp->s_size)
   n = 0;
  if (n == qp->s_tail)
   break;
  wqe = get_swqe_ptr(qp, n);
  diff = qib_cmp24(psn, wqe->psn);
  if (diff < 0)
   break;
  qp->s_cur = n;




  if (diff == 0) {
   qp->s_state = OP(SEND_LAST);
   goto done;
  }
  opcode = wqe->wr.opcode;
 }






 switch (opcode) {
 case 129:
 case 128:
  qp->s_state = OP(RDMA_READ_RESPONSE_FIRST);
  break;

 case 131:
 case 130:
  qp->s_state = OP(RDMA_READ_RESPONSE_LAST);
  break;

 case 132:
  qp->s_state = OP(RDMA_READ_RESPONSE_MIDDLE);
  break;

 default:




  qp->s_state = OP(SEND_LAST);
 }
done:
 qp->s_psn = psn;





 if ((qib_cmp24(qp->s_psn, qp->s_sending_hpsn) <= 0) &&
     (qib_cmp24(qp->s_sending_psn, qp->s_sending_hpsn) <= 0))
  qp->s_flags |= QIB_S_WAIT_PSN;
}
