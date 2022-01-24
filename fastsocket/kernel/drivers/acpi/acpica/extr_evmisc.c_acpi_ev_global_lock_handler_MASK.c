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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_cpu_flags ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_INTERRUPT_HANDLED ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ FALSE ; 
 scalar_t__ acpi_ev_global_lock_pending ; 
 int /*<<< orphan*/  acpi_ev_global_lock_pending_lock ; 
 int /*<<< orphan*/  acpi_gbl_global_lock_semaphore ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32 FUNC5(void *context)
{
	acpi_status status;
	acpi_cpu_flags flags;

	flags = FUNC2(acpi_ev_global_lock_pending_lock);

	if (!acpi_ev_global_lock_pending) {
		goto out;
	}

	/* Send a unit to the semaphore */

	status = FUNC4(acpi_gbl_global_lock_semaphore, 1);
	if (FUNC1(status)) {
		FUNC0((AE_INFO, "Could not signal Global Lock semaphore"));
	}

	acpi_ev_global_lock_pending = FALSE;

 out:
	FUNC3(acpi_ev_global_lock_pending_lock, flags);

	return (ACPI_INTERRUPT_HANDLED);
}