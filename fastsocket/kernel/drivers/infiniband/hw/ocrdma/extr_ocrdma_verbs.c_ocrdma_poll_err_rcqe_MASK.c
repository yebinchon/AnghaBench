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
struct ocrdma_cqe {int dummy; } ;
struct ib_wc {int dummy; } ;

/* Variables and functions */
 int OCRDMA_CQE_WR_FLUSH_ERR ; 
 scalar_t__ FUNC0 (struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_qp*) ; 
 int FUNC2 (struct ib_wc*,struct ocrdma_cqe*,struct ocrdma_qp*,int) ; 
 int FUNC3 (struct ib_wc*,struct ocrdma_cqe*,struct ocrdma_qp*,int) ; 

__attribute__((used)) static bool FUNC4(struct ocrdma_qp *qp, struct ocrdma_cqe *cqe,
				struct ib_wc *ibwc, bool *polled, bool *stop,
				int status)
{
	bool expand;

	/* when hw_rq is empty, but wq is not empty, so continue
	 * to keep the cqe to get the cq event again.
	 */
	if (FUNC0(qp) && !FUNC1(qp)) {
		if (!qp->srq && (qp->sq_cq == qp->rq_cq)) {
			*polled = true;
			status = OCRDMA_CQE_WR_FLUSH_ERR;
			expand = FUNC3(ibwc, cqe, qp, status);
		} else {
			*polled = false;
			*stop = true;
			expand = false;
		}
	} else {
		*polled = true;
		expand = FUNC2(ibwc, cqe, qp, status);
	}
	return expand;
}