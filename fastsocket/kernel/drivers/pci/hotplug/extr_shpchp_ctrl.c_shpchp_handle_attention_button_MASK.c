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
typedef  int /*<<< orphan*/  u32 ;
struct slot {int /*<<< orphan*/  presence_save; TYPE_1__* hpc_ops; } ;
struct controller {scalar_t__ slot_device_offset; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_adapter_status ) (struct slot*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  INT_BUTTON_PRESS ; 
 int /*<<< orphan*/  FUNC0 (struct controller*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct slot*,int /*<<< orphan*/ ) ; 
 struct slot* FUNC3 (struct controller*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct slot*) ; 
 int /*<<< orphan*/  FUNC5 (struct slot*,int /*<<< orphan*/ *) ; 

u8 FUNC6(u8 hp_slot, struct controller *ctrl)
{
	struct slot *p_slot;
	u32 event_type;

	/* Attention Button Change */
	FUNC0(ctrl, "Attention button interrupt received\n");

	p_slot = FUNC3(ctrl, hp_slot + ctrl->slot_device_offset);
	p_slot->hpc_ops->get_adapter_status(p_slot, &(p_slot->presence_save));

	/*
	 *  Button pressed - See if need to TAKE ACTION!!!
	 */
	FUNC1(ctrl, "Button pressed on Slot(%s)\n", FUNC4(p_slot));
	event_type = INT_BUTTON_PRESS;

	FUNC2(p_slot, event_type);

	return 0;

}