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
struct ib_cq {int dummy; } ;
struct c4iw_cq {int /*<<< orphan*/  lock; int /*<<< orphan*/  cq; } ;
typedef  enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;

/* Variables and functions */
 int IB_CQ_REPORT_MISSED_EVENTS ; 
 int IB_CQ_SOLICITED ; 
 int IB_CQ_SOLICITED_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct c4iw_cq* FUNC3 (struct ib_cq*) ; 

int FUNC4(struct ib_cq *ibcq, enum ib_cq_notify_flags flags)
{
	struct c4iw_cq *chp;
	int ret;
	unsigned long flag;

	chp = FUNC3(ibcq);
	FUNC0(&chp->lock, flag);
	ret = FUNC2(&chp->cq,
			(flags & IB_CQ_SOLICITED_MASK) == IB_CQ_SOLICITED);
	FUNC1(&chp->lock, flag);
	if (ret && !(flags & IB_CQ_REPORT_MISSED_EVENTS))
		ret = 0;
	return ret;
}