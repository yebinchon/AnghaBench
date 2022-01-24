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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) ()) ; 
 int /*<<< orphan*/  ACPI_MTX_EVENTS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

acpi_status FUNC6(void)
{
	acpi_status status;

	FUNC1(acpi_enable_all_runtime_gpes);

	status = FUNC3(ACPI_MTX_EVENTS);
	if (FUNC0(status)) {
		FUNC5(status);
	}

	status = FUNC2();
	(void)FUNC4(ACPI_MTX_EVENTS);

	FUNC5(status);
}