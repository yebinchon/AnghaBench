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
struct ocrdma_qp {int /*<<< orphan*/  ibqp; } ;
struct ocrdma_cqe {int dummy; } ;
struct ib_wc {int /*<<< orphan*/  status; int /*<<< orphan*/ * qp; scalar_t__ byte_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_QPS_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocrdma_qp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ocrdma_qp*,struct ocrdma_cqe*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static bool FUNC6(struct ib_wc *ibwc, struct ocrdma_cqe *cqe,
				  struct ocrdma_qp *qp, int status)
{
	bool expand = false;

	ibwc->byte_len = 0;
	ibwc->qp = &qp->ibqp;
	ibwc->status = FUNC5(status);

	FUNC2(qp);
	FUNC3(qp, IB_QPS_ERR, NULL);

	/* if wqe/rqe pending for which cqe needs to be returned,
	 * trigger inflating it.
	 */
	if (!FUNC0(qp) || !FUNC1(qp)) {
		expand = true;
		FUNC4(qp, cqe);
	}
	return expand;
}