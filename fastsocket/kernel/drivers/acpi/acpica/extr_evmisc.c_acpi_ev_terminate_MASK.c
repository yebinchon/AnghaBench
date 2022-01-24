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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_NUM_FIXED_EVENTS ; 
 scalar_t__ ACPI_SYS_MODE_LEGACY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_ev_delete_gpe_handlers ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ acpi_gbl_events_initialized ; 
 scalar_t__ acpi_gbl_original_mode ; 
 int /*<<< orphan*/  acpi_hw_disable_gpe_block ; 
 int /*<<< orphan*/  ev_terminate ; 
 int /*<<< orphan*/  return_VOID ; 

void FUNC9(void)
{
	u32 i;
	acpi_status status;

	FUNC2(ev_terminate);

	if (acpi_gbl_events_initialized) {
		/*
		 * Disable all event-related functionality. In all cases, on error,
		 * print a message but obviously we don't abort.
		 */

		/* Disable all fixed events */

		for (i = 0; i < ACPI_NUM_FIXED_EVENTS; i++) {
			status = FUNC5(i, 0);
			if (FUNC1(status)) {
				FUNC0((AE_INFO,
					    "Could not disable fixed event %d",
					    (u32) i));
			}
		}

		/* Disable all GPEs in all GPE blocks */

		status = FUNC8(acpi_hw_disable_gpe_block, NULL);

		/* Remove SCI handler */

		status = FUNC7();
		if (FUNC1(status)) {
			FUNC0((AE_INFO, "Could not remove SCI handler"));
		}

		status = FUNC6();
		if (FUNC1(status)) {
			FUNC0((AE_INFO,
				    "Could not remove Global Lock handler"));
		}
	}

	/* Deallocate all handler objects installed within GPE info structs */

	status = FUNC8(acpi_ev_delete_gpe_handlers, NULL);

	/* Return to original mode if necessary */

	if (acpi_gbl_original_mode == ACPI_SYS_MODE_LEGACY) {
		status = FUNC4();
		if (FUNC1(status)) {
			FUNC3((AE_INFO, "AcpiDisable failed"));
		}
	}
	return_VOID;
}