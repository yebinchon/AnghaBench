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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct slot {struct controller* ctrl; } ;
struct controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_POWER_FAULT ; 
 int /*<<< orphan*/  INT_POWER_FAULT_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (struct controller*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct slot*) ; 
 int /*<<< orphan*/  FUNC3 (struct slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct slot*) ; 

u8 FUNC5(struct slot *p_slot)
{
	u32 event_type;
	struct controller *ctrl = p_slot->ctrl;

	/* power fault */
	FUNC0(ctrl, "Power fault interrupt received\n");

	if (!FUNC2(p_slot)) {
		/*
		 * power fault Cleared
		 */
		FUNC1(ctrl, "Power fault cleared on Slot(%s)\n",
			  FUNC4(p_slot));
		event_type = INT_POWER_FAULT_CLEAR;
	} else {
		/*
		 *   power fault
		 */
		FUNC1(ctrl, "Power fault on Slot(%s)\n", FUNC4(p_slot));
		event_type = INT_POWER_FAULT;
		FUNC1(ctrl, "Power fault bit %x set\n", 0);
	}

	FUNC3(p_slot, event_type);

	return 1;
}