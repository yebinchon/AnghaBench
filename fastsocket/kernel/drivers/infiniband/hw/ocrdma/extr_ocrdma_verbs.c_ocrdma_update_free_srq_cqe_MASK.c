#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct ocrdma_srq {int /*<<< orphan*/  rq; int /*<<< orphan*/  q_lock; int /*<<< orphan*/ * rqe_wr_id_tbl; } ;
struct TYPE_3__ {int /*<<< orphan*/  srq; } ;
struct ocrdma_qp {TYPE_1__ ibqp; } ;
struct TYPE_4__ {int /*<<< orphan*/  buftag_qpn; } ;
struct ocrdma_cqe {TYPE_2__ rq; } ;
struct ib_wc {int /*<<< orphan*/  wr_id; } ;

/* Variables and functions */
 size_t OCRDMA_CQE_BUFTAG_SHIFT ; 
 struct ocrdma_srq* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ocrdma_srq*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct ib_wc *ibwc,
				       struct ocrdma_cqe *cqe,
				       struct ocrdma_qp *qp)
{
	unsigned long flags;
	struct ocrdma_srq *srq;
	u32 wqe_idx;

	srq = FUNC0(qp->ibqp.srq);
	wqe_idx = FUNC1(cqe->rq.buftag_qpn) >> OCRDMA_CQE_BUFTAG_SHIFT;
	ibwc->wr_id = srq->rqe_wr_id_tbl[wqe_idx];
	FUNC4(&srq->q_lock, flags);
	FUNC3(srq, wqe_idx);
	FUNC5(&srq->q_lock, flags);
	FUNC2(&srq->rq);
}