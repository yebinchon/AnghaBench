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
typedef  int u32 ;
struct ocrdma_qp {int id; int /*<<< orphan*/  rq; TYPE_2__* srq; int /*<<< orphan*/  sq; } ;
struct TYPE_3__ {int qpn; } ;
struct ocrdma_cqe {TYPE_1__ cmn; } ;
struct ocrdma_cq {int getp; int max_hw_cqe; int /*<<< orphan*/  cq_lock; struct ocrdma_cqe* va; } ;
struct TYPE_4__ {int /*<<< orphan*/  q_lock; int /*<<< orphan*/  rq; } ;

/* Variables and functions */
 int OCRDMA_CQE_QPN_MASK ; 
 scalar_t__ FUNC0 (struct ocrdma_cqe*) ; 
 scalar_t__ FUNC1 (struct ocrdma_qp*) ; 
 scalar_t__ FUNC2 (struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct ocrdma_qp *qp, struct ocrdma_cq *cq)
{
	unsigned long cq_flags;
	unsigned long flags;
	int discard_cnt = 0;
	u32 cur_getp, stop_getp;
	struct ocrdma_cqe *cqe;
	u32 qpn = 0;

	FUNC5(&cq->cq_lock, cq_flags);

	/* traverse through the CQEs in the hw CQ,
	 * find the matching CQE for a given qp,
	 * mark the matching one discarded by clearing qpn.
	 * ring the doorbell in the poll_cq() as
	 * we don't complete out of order cqe.
	 */

	cur_getp = cq->getp;
	/* find upto when do we reap the cq. */
	stop_getp = cur_getp;
	do {
		if (FUNC2(qp) && (!qp->srq && FUNC1(qp)))
			break;

		cqe = cq->va + cur_getp;
		/* if (a) done reaping whole hw cq, or
		 *    (b) qp_xq becomes empty.
		 * then exit
		 */
		qpn = cqe->cmn.qpn & OCRDMA_CQE_QPN_MASK;
		/* if previously discarded cqe found, skip that too. */
		/* check for matching qp */
		if (qpn == 0 || qpn != qp->id)
			goto skip_cqe;

		/* mark cqe discarded so that it is not picked up later
		 * in the poll_cq().
		 */
		discard_cnt += 1;
		cqe->cmn.qpn = 0;
		if (FUNC0(cqe))
			FUNC3(&qp->sq);
		else {
			if (qp->srq) {
				FUNC5(&qp->srq->q_lock, flags);
				FUNC3(&qp->srq->rq);
				FUNC4(qp->srq, cur_getp);
				FUNC6(&qp->srq->q_lock, flags);

			} else
				FUNC3(&qp->rq);
		}
skip_cqe:
		cur_getp = (cur_getp + 1) % cq->max_hw_cqe;
	} while (cur_getp != stop_getp);
	FUNC6(&cq->cq_lock, cq_flags);
}