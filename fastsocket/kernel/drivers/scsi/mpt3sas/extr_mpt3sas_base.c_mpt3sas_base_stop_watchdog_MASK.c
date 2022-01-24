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
struct workqueue_struct {int dummy; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  fault_reset_work; int /*<<< orphan*/  ioc_reset_in_progress_lock; struct workqueue_struct* fault_reset_work_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct workqueue_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct workqueue_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC5(struct MPT3SAS_ADAPTER *ioc)
{
	unsigned long flags;
	struct workqueue_struct *wq;

	FUNC3(&ioc->ioc_reset_in_progress_lock, flags);
	wq = ioc->fault_reset_work_q;
	ioc->fault_reset_work_q = NULL;
	FUNC4(&ioc->ioc_reset_in_progress_lock, flags);
	if (wq) {
		if (!FUNC0(&ioc->fault_reset_work))
			FUNC2(wq);
		FUNC1(wq);
	}
}