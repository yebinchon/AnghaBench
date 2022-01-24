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
struct pci_func {int status; } ;
struct event_info {int hp_slot; int /*<<< orphan*/  event_type; } ;
struct controller {size_t next_event; int ctrl_int_comp; int rev; struct event_info* event_queue; scalar_t__ slot_device_offset; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_POWER_FAULT ; 
 int /*<<< orphan*/  INT_POWER_FAULT_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (struct controller*,int) ; 
 struct pci_func* FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct controller*) ; 

__attribute__((used)) static u8 FUNC5(u8 change, struct controller * ctrl)
{
	int hp_slot;
	u8 rc = 0;
	struct pci_func *func;
	struct event_info *taskInfo;

	if (!change)
		return 0;

	/*
	 * power fault
	 */

	FUNC3("power fault interrupt\n");

	for (hp_slot = 0; hp_slot < 6; hp_slot++) {
		if (change & (0x01 << hp_slot)) {
			/*
			 * this one changed.
			 */
			func = FUNC1(ctrl->bus,
				(hp_slot + ctrl->slot_device_offset), 0);

			taskInfo = &(ctrl->event_queue[ctrl->next_event]);
			ctrl->next_event = (ctrl->next_event + 1) % 10;
			taskInfo->hp_slot = hp_slot;

			rc++;

			if (ctrl->ctrl_int_comp & (0x00000100 << hp_slot)) {
				/*
				 * power fault Cleared
				 */
				func->status = 0x00;

				taskInfo->event_type = INT_POWER_FAULT_CLEAR;
			} else {
				/*
				 * power fault
				 */
				taskInfo->event_type = INT_POWER_FAULT;

				if (ctrl->rev < 4) {
					FUNC0 (ctrl, hp_slot);
					FUNC2 (ctrl, hp_slot);
					FUNC4 (ctrl);

					/* this is a fatal condition, we want
					 * to crash the machine to protect from
					 * data corruption. simulated_NMI
					 * shouldn't ever return */
					/* FIXME
					simulated_NMI(hp_slot, ctrl); */

					/* The following code causes a software
					 * crash just in case simulated_NMI did
					 * return */
					/*FIXME
					panic(msg_power_fault); */
				} else {
					/* set power fault status for this board */
					func->status = 0xFF;
					FUNC3("power fault bit %x set\n", hp_slot);
				}
			}
		}
	}

	return rc;
}