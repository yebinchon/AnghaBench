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
typedef  size_t u32 ;
struct TYPE_2__ {size_t status_bit_mask; size_t enable_bit_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INTERRUPTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t ACPI_INTERRUPT_NOT_HANDLED ; 
 size_t ACPI_NUM_FIXED_EVENTS ; 
 int /*<<< orphan*/  ACPI_REGISTER_PM1_ENABLE ; 
 int /*<<< orphan*/  ACPI_REGISTER_PM1_STATUS ; 
 size_t FUNC2 (size_t) ; 
 TYPE_1__* acpi_gbl_fixed_event_info ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  ev_fixed_event_detect ; 

u32 FUNC5(void)
{
	u32 int_status = ACPI_INTERRUPT_NOT_HANDLED;
	u32 fixed_status;
	u32 fixed_enable;
	u32 i;

	FUNC1(ev_fixed_event_detect);

	/*
	 * Read the fixed feature status and enable registers, as all the cases
	 * depend on their values. Ignore errors here.
	 */
	(void)FUNC3(ACPI_REGISTER_PM1_STATUS, &fixed_status);
	(void)FUNC3(ACPI_REGISTER_PM1_ENABLE, &fixed_enable);

	FUNC0((ACPI_DB_INTERRUPTS,
			  "Fixed Event Block: Enable %08X Status %08X\n",
			  fixed_enable, fixed_status));

	/*
	 * Check for all possible Fixed Events and dispatch those that are active
	 */
	for (i = 0; i < ACPI_NUM_FIXED_EVENTS; i++) {

		/* Both the status and enable bits must be on for this event */

		if ((fixed_status & acpi_gbl_fixed_event_info[i].
		     status_bit_mask)
		    && (fixed_enable & acpi_gbl_fixed_event_info[i].
			enable_bit_mask)) {

			/* Found an active (signalled) event */
			FUNC4(i);
			int_status |= FUNC2(i);
		}
	}

	return (int_status);
}