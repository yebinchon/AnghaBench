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
typedef  int u32 ;
struct controller {scalar_t__ hpc_reg; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ LED_CONTROL ; 
 scalar_t__ SLOT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*) ; 
 int /*<<< orphan*/  FUNC4 (struct controller*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct controller*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

int FUNC7(struct controller *ctrl, int test_num)
{
	u32 save_LED;
	u32 work_LED;
	int loop;
	int num_of_slots;

	num_of_slots = FUNC1(ctrl->hpc_reg + SLOT_MASK) & 0x0f;

	switch (test_num) {
	case 1:
		/* Do stuff here! */

		/* Do that funky LED thing */
		/* so we can restore them later */
		save_LED = FUNC2(ctrl->hpc_reg + LED_CONTROL);
		work_LED = 0x01010101;
		FUNC4(ctrl, num_of_slots, &work_LED, 0);
		FUNC4(ctrl, num_of_slots, &work_LED, 1);
		FUNC4(ctrl, num_of_slots, &work_LED, 0);
		FUNC4(ctrl, num_of_slots, &work_LED, 1);

		work_LED = 0x01010000;
		FUNC6(work_LED, ctrl->hpc_reg + LED_CONTROL);
		FUNC4(ctrl, num_of_slots, &work_LED, 0);
		FUNC4(ctrl, num_of_slots, &work_LED, 1);
		work_LED = 0x00000101;
		FUNC6(work_LED, ctrl->hpc_reg + LED_CONTROL);
		FUNC4(ctrl, num_of_slots, &work_LED, 0);
		FUNC4(ctrl, num_of_slots, &work_LED, 1);

		work_LED = 0x01010000;
		FUNC6(work_LED, ctrl->hpc_reg + LED_CONTROL);
		for (loop = 0; loop < num_of_slots; loop++) {
			FUNC3(ctrl);

			/* Wait for SOGO interrupt */
			FUNC5 (ctrl);

			/* Get ready for next iteration */
			FUNC0((3*HZ)/10);
			work_LED = work_LED >> 16;
			FUNC6(work_LED, ctrl->hpc_reg + LED_CONTROL);

			FUNC3(ctrl);

			/* Wait for SOGO interrupt */
			FUNC5 (ctrl);

			/* Get ready for next iteration */
			FUNC0((3*HZ)/10);
			work_LED = work_LED << 16;
			FUNC6(work_LED, ctrl->hpc_reg + LED_CONTROL);
			work_LED = work_LED << 1;
			FUNC6(work_LED, ctrl->hpc_reg + LED_CONTROL);
		}

		/* put it back the way it was */
		FUNC6(save_LED, ctrl->hpc_reg + LED_CONTROL);

		FUNC3(ctrl);

		/* Wait for SOBS to be unset */
		FUNC5 (ctrl);
		break;
	case 2:
		/* Do other stuff here! */
		break;
	case 3:
		/* and more... */
		break;
	}
	return 0;
}