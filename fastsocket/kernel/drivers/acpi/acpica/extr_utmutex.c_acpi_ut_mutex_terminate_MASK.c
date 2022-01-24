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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_NUM_MUTEX ; 
 int /*<<< orphan*/  acpi_gbl_gpe_lock ; 
 int /*<<< orphan*/  acpi_gbl_hardware_lock ; 
 int /*<<< orphan*/  acpi_gbl_namespace_rw_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  return_VOID ; 
 int /*<<< orphan*/  ut_mutex_terminate ; 

void FUNC4(void)
{
	u32 i;

	FUNC0(ut_mutex_terminate);

	/* Delete each predefined mutex object */

	for (i = 0; i < ACPI_NUM_MUTEX; i++) {
		(void)FUNC2(i);
	}

	/* Delete the spinlocks */

	FUNC1(acpi_gbl_gpe_lock);
	FUNC1(acpi_gbl_hardware_lock);

	/* Delete the reader/writer lock */

	FUNC3(&acpi_gbl_namespace_rw_lock);
	return_VOID;
}