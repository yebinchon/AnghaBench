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
typedef  int u32 ;
struct pvscsi_adapter {int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  work; int /*<<< orphan*/  workqueue; scalar_t__ use_msg; scalar_t__ use_msix; scalar_t__ use_msi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PVSCSI_INTR_ALL_SUPPORTED ; 
 scalar_t__ FUNC1 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct pvscsi_adapter*) ; 
 int FUNC3 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *devp)
{
	struct pvscsi_adapter *adapter = devp;
	int handled;

	if (adapter->use_msi || adapter->use_msix)
		handled = true;
	else {
		u32 val = FUNC3(adapter);
		handled = (val & PVSCSI_INTR_ALL_SUPPORTED) != 0;
		if (handled)
			FUNC4(devp, val);
	}

	if (handled) {
		unsigned long flags;

		FUNC6(&adapter->hw_lock, flags);

		FUNC2(adapter);
		if (adapter->use_msg && FUNC1(adapter))
			FUNC5(adapter->workqueue, &adapter->work);

		FUNC7(&adapter->hw_lock, flags);
	}

	return FUNC0(handled);
}