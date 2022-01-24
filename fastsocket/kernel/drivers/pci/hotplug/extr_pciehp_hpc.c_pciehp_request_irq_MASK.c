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
struct controller {int /*<<< orphan*/  poll_timer; TYPE_1__* pcie; } ;
struct TYPE_2__ {int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  MY_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct controller*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pcie_isr ; 
 scalar_t__ pciehp_poll_mode ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*,int) ; 

__attribute__((used)) static inline int FUNC4(struct controller *ctrl)
{
	int retval, irq = ctrl->pcie->irq;

	/* Install interrupt polling timer. Start with 10 sec delay */
	if (pciehp_poll_mode) {
		FUNC1(&ctrl->poll_timer);
		FUNC3(ctrl, 10);
		return 0;
	}

	/* Installs the interrupt handler */
	retval = FUNC2(irq, pcie_isr, IRQF_SHARED, MY_NAME, ctrl);
	if (retval)
		FUNC0(ctrl, "Cannot get irq %d for the hotplug controller\n",
			 irq);
	return retval;
}