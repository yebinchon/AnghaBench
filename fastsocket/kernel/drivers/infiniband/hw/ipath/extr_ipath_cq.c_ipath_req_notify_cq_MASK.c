#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ipath_cq {int notify; int /*<<< orphan*/  lock; TYPE_1__* queue; } ;
struct ib_cq {int dummy; } ;
typedef  enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;
struct TYPE_2__ {scalar_t__ head; scalar_t__ tail; } ;

/* Variables and functions */
 int IB_CQ_NEXT_COMP ; 
 int IB_CQ_REPORT_MISSED_EVENTS ; 
 int IB_CQ_SOLICITED_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ipath_cq* FUNC2 (struct ib_cq*) ; 

int FUNC3(struct ib_cq *ibcq, enum ib_cq_notify_flags notify_flags)
{
	struct ipath_cq *cq = FUNC2(ibcq);
	unsigned long flags;
	int ret = 0;

	FUNC0(&cq->lock, flags);
	/*
	 * Don't change IB_CQ_NEXT_COMP to IB_CQ_SOLICITED but allow
	 * any other transitions (see C11-31 and C11-32 in ch. 11.4.2.2).
	 */
	if (cq->notify != IB_CQ_NEXT_COMP)
		cq->notify = notify_flags & IB_CQ_SOLICITED_MASK;

	if ((notify_flags & IB_CQ_REPORT_MISSED_EVENTS) &&
	    cq->queue->head != cq->queue->tail)
		ret = 1;

	FUNC1(&cq->lock, flags);

	return ret;
}