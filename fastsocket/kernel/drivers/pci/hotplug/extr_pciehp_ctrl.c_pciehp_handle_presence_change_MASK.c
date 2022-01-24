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
 int /*<<< orphan*/  INT_PRESENCE_OFF ; 
 int /*<<< orphan*/  INT_PRESENCE_ON ; 
 int /*<<< orphan*/  FUNC0 (struct controller*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct slot*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct slot*) ; 

u8 FUNC5(struct slot *p_slot)
{
	u32 event_type;
	u8 presence_save;
	struct controller *ctrl = p_slot->ctrl;

	/* Presence Change */
	FUNC0(ctrl, "Presence/Notify input change\n");

	/* Switch is open, assume a presence change
	 * Save the presence state
	 */
	FUNC2(p_slot, &presence_save);
	if (presence_save) {
		/*
		 * Card Present
		 */
		FUNC1(ctrl, "Card present on Slot(%s)\n", FUNC4(p_slot));
		event_type = INT_PRESENCE_ON;
	} else {
		/*
		 * Not Present
		 */
		FUNC1(ctrl, "Card not present on Slot(%s)\n",
			  FUNC4(p_slot));
		event_type = INT_PRESENCE_OFF;
	}

	FUNC3(p_slot, event_type);

	return 1;
}