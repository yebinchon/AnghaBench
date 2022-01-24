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
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  acpi_gbl_events_initialized ; 
 int /*<<< orphan*/  ev_install_xrupt_handlers ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

acpi_status FUNC6(void)
{
	acpi_status status;

	FUNC2(ev_install_xrupt_handlers);

	/* Install the SCI handler */

	status = FUNC4();
	if (FUNC1(status)) {
		FUNC0((AE_INFO, status,
				"Unable to install System Control Interrupt handler"));
		FUNC5(status);
	}

	/* Install the handler for the Global Lock */

	status = FUNC3();
	if (FUNC1(status)) {
		FUNC0((AE_INFO, status,
				"Unable to initialize Global Lock handler"));
		FUNC5(status);
	}

	acpi_gbl_events_initialized = TRUE;
	FUNC5(status);
}