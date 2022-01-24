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
struct adapter {int slow_intr_mask; int /*<<< orphan*/  work_lock; int /*<<< orphan*/  ext_intr_handler_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PL_INT_ENABLE0 ; 
 int F_T3DBG ; 
 int /*<<< orphan*/  cxgb3_wq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct adapter *adapter)
{
	/*
	 * Schedule a task to handle external interrupts as they may be slow
	 * and we use a mutex to protect MDIO registers.  We disable PHY
	 * interrupts in the meantime and let the task reenable them when
	 * it's done.
	 */
	FUNC1(&adapter->work_lock);
	if (adapter->slow_intr_mask) {
		adapter->slow_intr_mask &= ~F_T3DBG;
		FUNC3(adapter, A_PL_INT_ENABLE0,
			     adapter->slow_intr_mask);
		FUNC0(cxgb3_wq, &adapter->ext_intr_handler_task);
	}
	FUNC2(&adapter->work_lock);
}