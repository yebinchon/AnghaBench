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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct slot {struct controller* ctrl; } ;
struct controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_BUTTON_PRESS ; 
 int /*<<< orphan*/  FUNC0 (struct controller*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct slot*) ; 

u8 FUNC4(struct slot *p_slot)
{
	u32 event_type;
	struct controller *ctrl = p_slot->ctrl;

	/* Attention Button Change */
	FUNC0(ctrl, "Attention button interrupt received\n");

	/*
	 *  Button pressed - See if need to TAKE ACTION!!!
	 */
	FUNC1(ctrl, "Button pressed on Slot(%s)\n", FUNC3(p_slot));
	event_type = INT_BUTTON_PRESS;

	FUNC2(p_slot, event_type);

	return 0;
}