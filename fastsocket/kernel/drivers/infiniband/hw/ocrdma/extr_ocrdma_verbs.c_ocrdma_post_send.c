
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ max_sges; size_t head; } ;
struct ocrdma_qp {scalar_t__ state; int q_lock; TYPE_3__ sq; TYPE_2__* wqe_wr_id_tbl; } ;
struct ocrdma_hdr_wqe {int cw; int lkey; void* immdt; scalar_t__ total_len; } ;
struct TYPE_6__ {int invalidate_rkey; int imm_data; } ;
struct ib_send_wr {scalar_t__ num_sge; int send_flags; int opcode; struct ib_send_wr* next; int wr_id; TYPE_1__ ex; } ;
struct ib_qp {int dummy; } ;
struct TYPE_7__ {int signaled; int wrid; } ;


 int EINVAL ;
 int ENOMEM ;
 int IB_SEND_FENCE ;
 int IB_SEND_SIGNALED ;
 int IB_SEND_SOLICITED ;
 int OCRDMA_FLAG_FENCE_L ;
 int OCRDMA_FLAG_IMM ;
 int OCRDMA_FLAG_INV ;
 int OCRDMA_FLAG_SIG ;
 int OCRDMA_FLAG_SOLICIT ;
 int OCRDMA_LKEY_INV ;
 scalar_t__ OCRDMA_QPS_RTS ;
 scalar_t__ OCRDMA_QPS_SQD ;
 int OCRDMA_SEND ;
 int OCRDMA_WQE_FLAGS_SHIFT ;
 int OCRDMA_WQE_OPCODE_SHIFT ;
 int OCRDMA_WQE_SIZE_MASK ;
 int OCRDMA_WQE_SIZE_SHIFT ;
 int OCRDMA_WQE_STRIDE ;
 int OCRDMA_WRITE ;
 struct ocrdma_qp* get_ocrdma_qp (struct ib_qp*) ;
 void* ntohl (int ) ;
 int ocrdma_build_read (struct ocrdma_qp*,struct ocrdma_hdr_wqe*,struct ib_send_wr*) ;
 int ocrdma_build_send (struct ocrdma_qp*,struct ocrdma_hdr_wqe*,struct ib_send_wr*) ;
 int ocrdma_build_write (struct ocrdma_qp*,struct ocrdma_hdr_wqe*,struct ib_send_wr*) ;
 int ocrdma_cpu_to_le32 (struct ocrdma_hdr_wqe*,int) ;
 scalar_t__ ocrdma_hwq_free_cnt (TYPE_3__*) ;
 struct ocrdma_hdr_wqe* ocrdma_hwq_head (TYPE_3__*) ;
 int ocrdma_hwq_inc_head (TYPE_3__*) ;
 int ocrdma_ring_sq_db (struct ocrdma_qp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wmb () ;

int ocrdma_post_send(struct ib_qp *ibqp, struct ib_send_wr *wr,
       struct ib_send_wr **bad_wr)
{
 int status = 0;
 struct ocrdma_qp *qp = get_ocrdma_qp(ibqp);
 struct ocrdma_hdr_wqe *hdr;
 unsigned long flags;

 spin_lock_irqsave(&qp->q_lock, flags);
 if (qp->state != OCRDMA_QPS_RTS && qp->state != OCRDMA_QPS_SQD) {
  spin_unlock_irqrestore(&qp->q_lock, flags);
  *bad_wr = wr;
  return -EINVAL;
 }

 while (wr) {
  if (ocrdma_hwq_free_cnt(&qp->sq) == 0 ||
      wr->num_sge > qp->sq.max_sges) {
   *bad_wr = wr;
   status = -ENOMEM;
   break;
  }
  hdr = ocrdma_hwq_head(&qp->sq);
  hdr->cw = 0;
  if (wr->send_flags & IB_SEND_SIGNALED)
   hdr->cw |= (OCRDMA_FLAG_SIG << OCRDMA_WQE_FLAGS_SHIFT);
  if (wr->send_flags & IB_SEND_FENCE)
   hdr->cw |=
       (OCRDMA_FLAG_FENCE_L << OCRDMA_WQE_FLAGS_SHIFT);
  if (wr->send_flags & IB_SEND_SOLICITED)
   hdr->cw |=
       (OCRDMA_FLAG_SOLICIT << OCRDMA_WQE_FLAGS_SHIFT);
  hdr->total_len = 0;
  switch (wr->opcode) {
  case 129:
   hdr->cw |= (OCRDMA_FLAG_IMM << OCRDMA_WQE_FLAGS_SHIFT);
   hdr->immdt = ntohl(wr->ex.imm_data);
  case 130:
   hdr->cw |= (OCRDMA_SEND << OCRDMA_WQE_OPCODE_SHIFT);
   ocrdma_build_send(qp, hdr, wr);
   break;
  case 128:
   hdr->cw |= (OCRDMA_FLAG_INV << OCRDMA_WQE_FLAGS_SHIFT);
   hdr->cw |= (OCRDMA_SEND << OCRDMA_WQE_OPCODE_SHIFT);
   hdr->lkey = wr->ex.invalidate_rkey;
   status = ocrdma_build_send(qp, hdr, wr);
   break;
  case 131:
   hdr->cw |= (OCRDMA_FLAG_IMM << OCRDMA_WQE_FLAGS_SHIFT);
   hdr->immdt = ntohl(wr->ex.imm_data);
  case 132:
   hdr->cw |= (OCRDMA_WRITE << OCRDMA_WQE_OPCODE_SHIFT);
   status = ocrdma_build_write(qp, hdr, wr);
   break;
  case 133:
   hdr->cw |= (OCRDMA_FLAG_INV << OCRDMA_WQE_FLAGS_SHIFT);
  case 134:
   ocrdma_build_read(qp, hdr, wr);
   break;
  case 135:
   hdr->cw |=
       (OCRDMA_LKEY_INV << OCRDMA_WQE_OPCODE_SHIFT);
   hdr->cw |= (sizeof(struct ocrdma_hdr_wqe) /
    OCRDMA_WQE_STRIDE) << OCRDMA_WQE_SIZE_SHIFT;
   hdr->lkey = wr->ex.invalidate_rkey;
   break;
  default:
   status = -EINVAL;
   break;
  }
  if (status) {
   *bad_wr = wr;
   break;
  }
  if (wr->send_flags & IB_SEND_SIGNALED)
   qp->wqe_wr_id_tbl[qp->sq.head].signaled = 1;
  else
   qp->wqe_wr_id_tbl[qp->sq.head].signaled = 0;
  qp->wqe_wr_id_tbl[qp->sq.head].wrid = wr->wr_id;
  ocrdma_cpu_to_le32(hdr, ((hdr->cw >> OCRDMA_WQE_SIZE_SHIFT) &
       OCRDMA_WQE_SIZE_MASK) * OCRDMA_WQE_STRIDE);

  wmb();

  ocrdma_ring_sq_db(qp);


  ocrdma_hwq_inc_head(&qp->sq);
  wr = wr->next;
 }
 spin_unlock_irqrestore(&qp->q_lock, flags);
 return status;
}
