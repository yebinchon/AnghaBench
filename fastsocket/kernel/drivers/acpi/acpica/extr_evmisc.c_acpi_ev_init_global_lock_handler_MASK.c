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
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_EVENT_GLOBAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_NO_HARDWARE_RESPONSE ; 
 scalar_t__ AE_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  acpi_ev_global_lock_handler ; 
 int /*<<< orphan*/  acpi_gbl_global_lock_present ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ev_init_global_lock_handler ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

acpi_status FUNC4(void)
{
	acpi_status status;

	FUNC1(ev_init_global_lock_handler);

	/* Attempt installation of the global lock handler */

	status = FUNC2(ACPI_EVENT_GLOBAL,
						  acpi_ev_global_lock_handler,
						  NULL);

	/*
	 * If the global lock does not exist on this platform, the attempt to
	 * enable GBL_STATUS will fail (the GBL_ENABLE bit will not stick).
	 * Map to AE_OK, but mark global lock as not present. Any attempt to
	 * actually use the global lock will be flagged with an error.
	 */
	if (status == AE_NO_HARDWARE_RESPONSE) {
		FUNC0((AE_INFO,
			    "No response from Global Lock hardware, disabling lock"));

		acpi_gbl_global_lock_present = FALSE;
		FUNC3(AE_OK);
	}

	acpi_gbl_global_lock_present = TRUE;
	FUNC3(status);
}