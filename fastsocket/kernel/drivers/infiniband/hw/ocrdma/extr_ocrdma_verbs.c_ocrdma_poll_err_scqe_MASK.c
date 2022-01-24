#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ocrdma_qp {scalar_t__ sq_cq; scalar_t__ rq_cq; int /*<<< orphan*/  srq; } ;
struct ocrdma_cqe {int /*<<< orphan*/  flags_status_srcqpn; } ;
struct ib_wc {int dummy; } ;

/* Variables and functions */
 int OCRDMA_CQE_STATUS_MASK ; 
 int OCRDMA_CQE_STATUS_SHIFT ; 
 int OCRDMA_CQE_WR_FLUSH_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct ocrdma_qp*) ; 
 scalar_t__ FUNC1 (struct ocrdma_qp*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ib_wc*,struct ocrdma_cqe*,struct ocrdma_qp*,int) ; 
 int FUNC4 (struct ib_wc*,struct ocrdma_cqe*,struct ocrdma_qp*,int) ; 

__attribute__((used)) static bool FUNC5(struct ocrdma_qp *qp,
				 struct ocrdma_cqe *cqe, struct ib_wc *ibwc,
				 bool *polled, bool *stop)
{
	bool expand;
	int status = (FUNC2(cqe->flags_status_srcqpn) &
		OCRDMA_CQE_STATUS_MASK) >> OCRDMA_CQE_STATUS_SHIFT;

	/* when hw sq is empty, but rq is not empty, so we continue
	 * to keep the cqe in order to get the cq event again.
	 */
	if (FUNC1(qp) && !FUNC0(qp)) {
		/* when cq for rq and sq is same, it is safe to return
		 * flush cqe for RQEs.
		 */
		if (!qp->srq && (qp->sq_cq == qp->rq_cq)) {
			*polled = true;
			status = OCRDMA_CQE_WR_FLUSH_ERR;
			expand = FUNC3(ibwc, cqe, qp, status);
		} else {
			/* stop processing further cqe as this cqe is used for
			 * triggering cq event on buddy cq of RQ.
			 * When QP is destroyed, this cqe will be removed
			 * from the cq's hardware q.
			 */
			*polled = false;
			*stop = true;
			expand = false;
		}
	} else {
		*polled = true;
		expand = FUNC4(ibwc, cqe, qp, status);
	}
	return expand;
}