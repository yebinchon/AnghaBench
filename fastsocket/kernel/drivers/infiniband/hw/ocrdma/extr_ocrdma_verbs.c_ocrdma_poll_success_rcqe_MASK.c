#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t tail; } ;
struct TYPE_7__ {scalar_t__ srq; } ;
struct ocrdma_qp {scalar_t__ qp_type; TYPE_4__ rq; int /*<<< orphan*/ * rqe_wr_id_tbl; TYPE_3__ ibqp; } ;
struct TYPE_6__ {int /*<<< orphan*/  lkey_immdt; int /*<<< orphan*/  rxlen; } ;
struct ocrdma_cqe {TYPE_2__ rq; } ;
struct TYPE_5__ {void* invalidate_rkey; void* imm_data; } ;
struct ib_wc {int /*<<< orphan*/  wr_id; int /*<<< orphan*/  wc_flags; TYPE_1__ ex; int /*<<< orphan*/  opcode; void* byte_len; int /*<<< orphan*/  status; TYPE_3__* qp; } ;

/* Variables and functions */
 scalar_t__ IB_QPT_GSI ; 
 scalar_t__ IB_QPT_UD ; 
 int /*<<< orphan*/  IB_WC_RECV ; 
 int /*<<< orphan*/  IB_WC_RECV_RDMA_WITH_IMM ; 
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 int /*<<< orphan*/  IB_WC_WITH_IMM ; 
 int /*<<< orphan*/  IB_WC_WITH_INVALIDATE ; 
 void* FUNC0 (void*) ; 
 scalar_t__ FUNC1 (struct ocrdma_cqe*) ; 
 scalar_t__ FUNC2 (struct ocrdma_cqe*) ; 
 scalar_t__ FUNC3 (struct ocrdma_cqe*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_wc*,struct ocrdma_cqe*,struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_wc*,struct ocrdma_cqe*) ; 

__attribute__((used)) static void FUNC8(struct ocrdma_qp *qp,
				     struct ocrdma_cqe *cqe, struct ib_wc *ibwc)
{
	ibwc->opcode = IB_WC_RECV;
	ibwc->qp = &qp->ibqp;
	ibwc->status = IB_WC_SUCCESS;

	if (qp->qp_type == IB_QPT_UD || qp->qp_type == IB_QPT_GSI)
		FUNC7(ibwc, cqe);
	else
		ibwc->byte_len = FUNC4(cqe->rq.rxlen);

	if (FUNC1(cqe)) {
		ibwc->ex.imm_data = FUNC0(FUNC4(cqe->rq.lkey_immdt));
		ibwc->wc_flags |= IB_WC_WITH_IMM;
	} else if (FUNC3(cqe)) {
		ibwc->opcode = IB_WC_RECV_RDMA_WITH_IMM;
		ibwc->ex.imm_data = FUNC0(FUNC4(cqe->rq.lkey_immdt));
		ibwc->wc_flags |= IB_WC_WITH_IMM;
	} else if (FUNC2(cqe)) {
		ibwc->ex.invalidate_rkey = FUNC4(cqe->rq.lkey_immdt);
		ibwc->wc_flags |= IB_WC_WITH_INVALIDATE;
	}
	if (qp->ibqp.srq)
		FUNC6(ibwc, cqe, qp);
	else {
		ibwc->wr_id = qp->rqe_wr_id_tbl[qp->rq.tail];
		FUNC5(&qp->rq);
	}
}