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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_NUM_MUTEX ; 
 int /*<<< orphan*/  acpi_ev_global_lock_pending_lock ; 
 int /*<<< orphan*/  acpi_gbl_gpe_lock ; 
 int /*<<< orphan*/  acpi_gbl_hardware_lock ; 
 int /*<<< orphan*/  acpi_gbl_namespace_rw_lock ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ut_mutex_initialize ; 

acpi_status FUNC6(void)
{
	u32 i;
	acpi_status status;

	FUNC1(ut_mutex_initialize);

	/* Create each of the predefined mutex objects */

	for (i = 0; i < ACPI_NUM_MUTEX; i++) {
		status = FUNC2(i);
		if (FUNC0(status)) {
			FUNC4(status);
		}
	}

	/* Create the spinlocks for use at interrupt level */

	FUNC5(acpi_gbl_gpe_lock);
	FUNC5(acpi_gbl_hardware_lock);
	FUNC5(acpi_ev_global_lock_pending_lock);

	/* Create the reader/writer lock for namespace access */

	status = FUNC3(&acpi_gbl_namespace_rw_lock);
	FUNC4(status);
}