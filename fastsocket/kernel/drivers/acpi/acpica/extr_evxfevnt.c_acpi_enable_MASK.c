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
 int /*<<< orphan*/  ACPI_DB_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) ()) ; 
 scalar_t__ ACPI_SYS_MODE_ACPI ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_ACPI_TABLES ; 
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

acpi_status FUNC8(void)
{
	acpi_status status = AE_OK;

	FUNC3(acpi_enable);

	/* ACPI tables must be present */

	if (!FUNC6()) {
		FUNC7(AE_NO_ACPI_TABLES);
	}

	/* Check current mode */

	if (FUNC4() == ACPI_SYS_MODE_ACPI) {
		FUNC0((ACPI_DB_INIT,
				  "System is already in ACPI mode\n"));
	} else {
		/* Transition to ACPI mode */

		status = FUNC5(ACPI_SYS_MODE_ACPI);
		if (FUNC2(status)) {
			FUNC1((AE_INFO,
				    "Could not transition to ACPI mode"));
			FUNC7(status);
		}

		FUNC0((ACPI_DB_INIT,
				  "Transition to ACPI mode successful\n"));
	}

	FUNC7(status);
}