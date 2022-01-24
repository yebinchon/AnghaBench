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
struct ti_ohci {int /*<<< orphan*/  iso_tasklet_list_lock; int /*<<< orphan*/  ir_multichannel_used; int /*<<< orphan*/  ir_ctx_usage; int /*<<< orphan*/  it_ctx_usage; } ;
struct ohci1394_iso_tasklet {scalar_t__ type; int /*<<< orphan*/  link; int /*<<< orphan*/  context; int /*<<< orphan*/  tasklet; } ;

/* Variables and functions */
 scalar_t__ OHCI_ISO_MULTICHANNEL_RECEIVE ; 
 scalar_t__ OHCI_ISO_TRANSMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ti_ohci *ohci,
				     struct ohci1394_iso_tasklet *tasklet)
{
	unsigned long flags;

	FUNC4(&tasklet->tasklet);

	FUNC2(&ohci->iso_tasklet_list_lock, flags);

	if (tasklet->type == OHCI_ISO_TRANSMIT)
		FUNC0(tasklet->context, &ohci->it_ctx_usage);
	else {
		FUNC0(tasklet->context, &ohci->ir_ctx_usage);

		if (tasklet->type == OHCI_ISO_MULTICHANNEL_RECEIVE) {
			FUNC0(0, &ohci->ir_multichannel_used);
		}
	}

	FUNC1(&tasklet->link);

	FUNC3(&ohci->iso_tasklet_list_lock, flags);
}