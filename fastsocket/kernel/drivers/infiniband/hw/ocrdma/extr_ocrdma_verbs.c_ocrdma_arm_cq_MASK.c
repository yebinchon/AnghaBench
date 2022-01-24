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
typedef  int u16 ;
struct ocrdma_dev {int dummy; } ;
struct ocrdma_cqe {int dummy; } ;
struct ocrdma_cq {int id; int armed; int solicited; int getp; int arm_needed; int /*<<< orphan*/  cq_lock; struct ocrdma_cqe* va; struct ocrdma_dev* dev; } ;
struct ib_cq {int dummy; } ;
typedef  enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;

/* Variables and functions */
 int IB_CQ_NEXT_COMP ; 
 int IB_CQ_SOLICITED ; 
 struct ocrdma_cq* FUNC0 (struct ib_cq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_cq*,struct ocrdma_cqe*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_dev*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct ib_cq *ibcq, enum ib_cq_notify_flags cq_flags)
{
	struct ocrdma_cq *cq;
	unsigned long flags;
	struct ocrdma_dev *dev;
	u16 cq_id;
	u16 cur_getp;
	struct ocrdma_cqe *cqe;

	cq = FUNC0(ibcq);
	cq_id = cq->id;
	dev = cq->dev;

	FUNC3(&cq->cq_lock, flags);
	if (cq_flags & IB_CQ_NEXT_COMP || cq_flags & IB_CQ_SOLICITED)
		cq->armed = true;
	if (cq_flags & IB_CQ_SOLICITED)
		cq->solicited = true;

	cur_getp = cq->getp;
	cqe = cq->va + cur_getp;

	/* check whether any valid cqe exist or not, if not then safe to
	 * arm. If cqe is not yet consumed, then let it get consumed and then
	 * we arm it to avoid false interrupts.
	 */
	if (!FUNC1(cq, cqe) || cq->arm_needed) {
		cq->arm_needed = false;
		FUNC2(dev, cq_id, cq->armed, cq->solicited, 0);
	}
	FUNC4(&cq->cq_lock, flags);
	return 0;
}