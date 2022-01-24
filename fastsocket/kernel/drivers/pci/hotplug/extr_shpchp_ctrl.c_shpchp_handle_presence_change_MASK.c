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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct slot {scalar_t__ presence_save; TYPE_1__* hpc_ops; } ;
struct controller {int slot_device_offset; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_adapter_status ) (struct slot*,scalar_t__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  INT_PRESENCE_OFF ; 
 int /*<<< orphan*/  INT_PRESENCE_ON ; 
 int /*<<< orphan*/  FUNC0 (struct controller*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct slot*,int /*<<< orphan*/ ) ; 
 struct slot* FUNC3 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct slot*) ; 
 int /*<<< orphan*/  FUNC5 (struct slot*,scalar_t__*) ; 

u8 FUNC6(u8 hp_slot, struct controller *ctrl)
{
	struct slot *p_slot;
	u32 event_type;

	/* Presence Change */
	FUNC0(ctrl, "Presence/Notify input change\n");

	p_slot = FUNC3(ctrl, hp_slot + ctrl->slot_device_offset);

	/*
	 * Save the presence state
	 */
	p_slot->hpc_ops->get_adapter_status(p_slot, &(p_slot->presence_save));
	if (p_slot->presence_save) {
		/*
		 * Card Present
		 */
		FUNC1(ctrl, "Card present on Slot(%s)\n",
			  FUNC4(p_slot));
		event_type = INT_PRESENCE_ON;
	} else {
		/*
		 * Not Present
		 */
		FUNC1(ctrl, "Card not present on Slot(%s)\n",
			  FUNC4(p_slot));
		event_type = INT_PRESENCE_OFF;
	}

	FUNC2(p_slot, event_type);

	return 1;
}