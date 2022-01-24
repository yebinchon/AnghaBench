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
 int /*<<< orphan*/  INT_SWITCH_CLOSE ; 
 int /*<<< orphan*/  INT_SWITCH_OPEN ; 
 int /*<<< orphan*/  FUNC0 (struct controller*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct slot*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct slot*) ; 

u8 FUNC5(struct slot *p_slot)
{
	u8 getstatus;
	u32 event_type;
	struct controller *ctrl = p_slot->ctrl;

	/* Switch Change */
	FUNC0(ctrl, "Switch interrupt received\n");

	FUNC2(p_slot, &getstatus);
	if (getstatus) {
		/*
		 * Switch opened
		 */
		FUNC1(ctrl, "Latch open on Slot(%s)\n", FUNC4(p_slot));
		event_type = INT_SWITCH_OPEN;
	} else {
		/*
		 *  Switch closed
		 */
		FUNC1(ctrl, "Latch close on Slot(%s)\n", FUNC4(p_slot));
		event_type = INT_SWITCH_CLOSE;
	}

	FUNC3(p_slot, event_type);

	return 1;
}