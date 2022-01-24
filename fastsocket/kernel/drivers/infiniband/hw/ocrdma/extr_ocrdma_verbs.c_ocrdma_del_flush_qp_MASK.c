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
struct ocrdma_qp {int /*<<< orphan*/  rq_entry; int /*<<< orphan*/  rq_cq; int /*<<< orphan*/  srq; int /*<<< orphan*/  sq_entry; int /*<<< orphan*/  sq_cq; struct ocrdma_dev* dev; } ;
struct ocrdma_dev {int /*<<< orphan*/  flush_q_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ocrdma_qp*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct ocrdma_qp *qp)
{
	int found = false;
	unsigned long flags;
	struct ocrdma_dev *dev = qp->dev;
	/* sync with any active CQ poll */

	FUNC3(&dev->flush_q_lock, flags);
	found = FUNC2(qp->sq_cq, qp);
	if (found)
		FUNC0(&qp->sq_entry);
	if (!qp->srq) {
		found = FUNC1(qp->rq_cq, qp);
		if (found)
			FUNC0(&qp->rq_entry);
	}
	FUNC4(&dev->flush_q_lock, flags);
}