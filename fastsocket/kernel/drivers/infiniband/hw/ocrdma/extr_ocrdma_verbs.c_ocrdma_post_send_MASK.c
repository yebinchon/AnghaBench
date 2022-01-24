#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ max_sges; size_t head; } ;
struct ocrdma_qp {scalar_t__ state; int /*<<< orphan*/  q_lock; TYPE_3__ sq; TYPE_2__* wqe_wr_id_tbl; } ;
struct ocrdma_hdr_wqe {int cw; int /*<<< orphan*/  lkey; void* immdt; scalar_t__ total_len; } ;
struct TYPE_6__ {int /*<<< orphan*/  invalidate_rkey; int /*<<< orphan*/  imm_data; } ;
struct ib_send_wr {scalar_t__ num_sge; int send_flags; int opcode; struct ib_send_wr* next; int /*<<< orphan*/  wr_id; TYPE_1__ ex; } ;
struct ib_qp {int dummy; } ;
struct TYPE_7__ {int signaled; int /*<<< orphan*/  wrid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int IB_SEND_FENCE ; 
 int IB_SEND_SIGNALED ; 
 int IB_SEND_SOLICITED ; 
#define  IB_WR_LOCAL_INV 135 
#define  IB_WR_RDMA_READ 134 
#define  IB_WR_RDMA_READ_WITH_INV 133 
#define  IB_WR_RDMA_WRITE 132 
#define  IB_WR_RDMA_WRITE_WITH_IMM 131 
#define  IB_WR_SEND 130 
#define  IB_WR_SEND_WITH_IMM 129 
#define  IB_WR_SEND_WITH_INV 128 
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
 struct ocrdma_qp* FUNC0 (struct ib_qp*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_qp*,struct ocrdma_hdr_wqe*,struct ib_send_wr*) ; 
 int FUNC3 (struct ocrdma_qp*,struct ocrdma_hdr_wqe*,struct ib_send_wr*) ; 
 int FUNC4 (struct ocrdma_qp*,struct ocrdma_hdr_wqe*,struct ib_send_wr*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocrdma_hdr_wqe*,int) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 struct ocrdma_hdr_wqe* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(struct ib_qp *ibqp, struct ib_send_wr *wr,
		     struct ib_send_wr **bad_wr)
{
	int status = 0;
	struct ocrdma_qp *qp = FUNC0(ibqp);
	struct ocrdma_hdr_wqe *hdr;
	unsigned long flags;

	FUNC10(&qp->q_lock, flags);
	if (qp->state != OCRDMA_QPS_RTS && qp->state != OCRDMA_QPS_SQD) {
		FUNC11(&qp->q_lock, flags);
		*bad_wr = wr;
		return -EINVAL;
	}

	while (wr) {
		if (FUNC6(&qp->sq) == 0 ||
		    wr->num_sge > qp->sq.max_sges) {
			*bad_wr = wr;
			status = -ENOMEM;
			break;
		}
		hdr = FUNC7(&qp->sq);
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
		case IB_WR_SEND_WITH_IMM:
			hdr->cw |= (OCRDMA_FLAG_IMM << OCRDMA_WQE_FLAGS_SHIFT);
			hdr->immdt = FUNC1(wr->ex.imm_data);
		case IB_WR_SEND:
			hdr->cw |= (OCRDMA_SEND << OCRDMA_WQE_OPCODE_SHIFT);
			FUNC3(qp, hdr, wr);
			break;
		case IB_WR_SEND_WITH_INV:
			hdr->cw |= (OCRDMA_FLAG_INV << OCRDMA_WQE_FLAGS_SHIFT);
			hdr->cw |= (OCRDMA_SEND << OCRDMA_WQE_OPCODE_SHIFT);
			hdr->lkey = wr->ex.invalidate_rkey;
			status = FUNC3(qp, hdr, wr);
			break;
		case IB_WR_RDMA_WRITE_WITH_IMM:
			hdr->cw |= (OCRDMA_FLAG_IMM << OCRDMA_WQE_FLAGS_SHIFT);
			hdr->immdt = FUNC1(wr->ex.imm_data);
		case IB_WR_RDMA_WRITE:
			hdr->cw |= (OCRDMA_WRITE << OCRDMA_WQE_OPCODE_SHIFT);
			status = FUNC4(qp, hdr, wr);
			break;
		case IB_WR_RDMA_READ_WITH_INV:
			hdr->cw |= (OCRDMA_FLAG_INV << OCRDMA_WQE_FLAGS_SHIFT);
		case IB_WR_RDMA_READ:
			FUNC2(qp, hdr, wr);
			break;
		case IB_WR_LOCAL_INV:
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
		FUNC5(hdr, ((hdr->cw >> OCRDMA_WQE_SIZE_SHIFT) &
				   OCRDMA_WQE_SIZE_MASK) * OCRDMA_WQE_STRIDE);
		/* make sure wqe is written before adapter can access it */
		FUNC12();
		/* inform hw to start processing it */
		FUNC9(qp);

		/* update pointer, counter for next wr */
		FUNC8(&qp->sq);
		wr = wr->next;
	}
	FUNC11(&qp->q_lock, flags);
	return status;
}