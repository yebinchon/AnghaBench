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
typedef  scalar_t__ u8 ;
struct slot {struct controller* ctrl; TYPE_1__* hpc_ops; } ;
struct controller {int /*<<< orphan*/  crit_sect; } ;
struct TYPE_2__ {int (* get_adapter_status ) (struct slot*,scalar_t__*) ;int (* get_latch_status ) (struct slot*,scalar_t__*) ;int (* get_power_status ) (struct slot*,scalar_t__*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct slot*) ; 
 int /*<<< orphan*/  FUNC4 (struct slot*) ; 
 int FUNC5 (struct slot*,scalar_t__*) ; 
 int FUNC6 (struct slot*,scalar_t__*) ; 
 int FUNC7 (struct slot*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct slot*) ; 

__attribute__((used)) static int FUNC9 (struct slot *p_slot)
{
	u8 getstatus = 0;
	int rc, retval = -ENODEV;
	struct controller *ctrl = p_slot->ctrl;

	if (!p_slot->ctrl)
		return -ENODEV;

	/* Check to see if (latch closed, card present, power on) */
	FUNC1(&p_slot->ctrl->crit_sect);

	rc = p_slot->hpc_ops->get_adapter_status(p_slot, &getstatus);
	if (rc || !getstatus) {
		FUNC0(ctrl, "No adapter on slot(%s)\n", FUNC4(p_slot));
		goto out;
	}
	rc = p_slot->hpc_ops->get_latch_status(p_slot, &getstatus);
	if (rc || getstatus) {
		FUNC0(ctrl, "Latch open on slot(%s)\n", FUNC4(p_slot));
		goto out;
	}
	rc = p_slot->hpc_ops->get_power_status(p_slot, &getstatus);
	if (rc || !getstatus) {
		FUNC0(ctrl, "Already disabled on slot(%s)\n",
			  FUNC4(p_slot));
		goto out;
	}

	retval = FUNC3(p_slot);
	FUNC8(p_slot);
 out:
	FUNC2(&p_slot->ctrl->crit_sect);
	return retval;
}