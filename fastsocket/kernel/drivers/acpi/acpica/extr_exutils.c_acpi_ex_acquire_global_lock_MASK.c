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
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_WAIT_FOREVER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int AML_FIELD_LOCK_RULE_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_gbl_global_lock_mutex ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ex_acquire_global_lock ; 
 int /*<<< orphan*/  return_VOID ; 

void FUNC5(u32 field_flags)
{
	acpi_status status;

	FUNC2(ex_acquire_global_lock);

	/* Only use the lock if the always_lock bit is set */

	if (!(field_flags & AML_FIELD_LOCK_RULE_MASK)) {
		return_VOID;
	}

	/* Attempt to get the global lock, wait forever */

	status = FUNC3(ACPI_WAIT_FOREVER,
					      acpi_gbl_global_lock_mutex,
					      FUNC4());

	if (FUNC1(status)) {
		FUNC0((AE_INFO, status,
				"Could not acquire Global Lock"));
	}

	return_VOID;
}