#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ocrdma_qp {TYPE_1__* dev; TYPE_3__* rq_cq; int /*<<< orphan*/  rq_entry; int /*<<< orphan*/  srq; TYPE_2__* sq_cq; int /*<<< orphan*/  sq_entry; } ;
struct TYPE_6__ {int /*<<< orphan*/  rq_head; } ;
struct TYPE_5__ {int /*<<< orphan*/  sq_head; } ;
struct TYPE_4__ {int /*<<< orphan*/  flush_q_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_3__*,struct ocrdma_qp*) ; 
 int FUNC2 (TYPE_2__*,struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct ocrdma_qp *qp)
{
	bool found;
	unsigned long flags;

	FUNC3(&qp->dev->flush_q_lock, flags);
	found = FUNC2(qp->sq_cq, qp);
	if (!found)
		FUNC0(&qp->sq_entry, &qp->sq_cq->sq_head);
	if (!qp->srq) {
		found = FUNC1(qp->rq_cq, qp);
		if (!found)
			FUNC0(&qp->rq_entry, &qp->rq_cq->rq_head);
	}
	FUNC4(&qp->dev->flush_q_lock, flags);
}