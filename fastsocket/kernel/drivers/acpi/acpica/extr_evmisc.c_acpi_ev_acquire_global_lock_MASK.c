#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  scalar_t__ acpi_status ;
typedef  int /*<<< orphan*/  acpi_cpu_flags ;
struct TYPE_3__ {int /*<<< orphan*/  os_mutex; } ;
struct TYPE_4__ {TYPE_1__ mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  ACPI_WAIT_FOREVER ; 
 scalar_t__ AE_OK ; 
 scalar_t__ AE_TIME ; 
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  acpi_ev_global_lock_acquired ; 
 void* acpi_ev_global_lock_pending ; 
 int /*<<< orphan*/  acpi_ev_global_lock_pending_lock ; 
 scalar_t__ acpi_ev_global_lock_thread_id ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_gbl_FACS ; 
 void* acpi_gbl_global_lock_acquired ; 
 int acpi_gbl_global_lock_handle ; 
 TYPE_2__* acpi_gbl_global_lock_mutex ; 
 int /*<<< orphan*/  acpi_gbl_global_lock_present ; 
 int /*<<< orphan*/  acpi_gbl_global_lock_semaphore ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_acquire_global_lock ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

acpi_status FUNC11(u16 timeout)
{
	acpi_cpu_flags flags;
	acpi_status status = AE_OK;
	u8 acquired = FALSE;

	FUNC3(ev_acquire_global_lock);

	/*
	 * Only one thread can acquire the GL at a time, the global_lock_mutex
	 * enforces this. This interface releases the interpreter if we must wait.
	 */
	status = FUNC5(
			acpi_gbl_global_lock_mutex->mutex.os_mutex, 0);
	if (status == AE_TIME) {
		if (acpi_ev_global_lock_thread_id == FUNC8()) {
			acpi_ev_global_lock_acquired++;
			return AE_OK;
		}
	}

	if (FUNC2(status)) {
		status = FUNC5(
				acpi_gbl_global_lock_mutex->mutex.os_mutex,
				timeout);
	}
	if (FUNC2(status)) {
		FUNC10(status);
	}

	acpi_ev_global_lock_thread_id = FUNC8();
	acpi_ev_global_lock_acquired++;

	/*
	 * Update the global lock handle and check for wraparound. The handle is
	 * only used for the external global lock interfaces, but it is updated
	 * here to properly handle the case where a single thread may acquire the
	 * lock via both the AML and the acpi_acquire_global_lock interfaces. The
	 * handle is therefore updated on the first acquire from a given thread
	 * regardless of where the acquisition request originated.
	 */
	acpi_gbl_global_lock_handle++;
	if (acpi_gbl_global_lock_handle == 0) {
		acpi_gbl_global_lock_handle = 1;
	}

	/*
	 * Make sure that a global lock actually exists. If not, just treat the
	 * lock as a standard mutex.
	 */
	if (!acpi_gbl_global_lock_present) {
		acpi_gbl_global_lock_acquired = TRUE;
		FUNC10(AE_OK);
	}

	flags = FUNC7(acpi_ev_global_lock_pending_lock);

	do {

		/* Attempt to acquire the actual hardware lock */

		FUNC0(acpi_gbl_FACS, acquired);
		if (acquired) {
			acpi_gbl_global_lock_acquired = TRUE;

			FUNC1((ACPI_DB_EXEC,
					  "Acquired hardware Global Lock\n"));
			break;
		}

		acpi_ev_global_lock_pending = TRUE;

		FUNC9(acpi_ev_global_lock_pending_lock, flags);

		/*
		 * Did not get the lock. The pending bit was set above, and we
		 * must wait until we get the global lock released interrupt.
		 */
		FUNC1((ACPI_DB_EXEC,
				  "Waiting for hardware Global Lock\n"));

		/*
		 * Wait for handshake with the global lock interrupt handler.
		 * This interface releases the interpreter if we must wait.
		 */
		status = FUNC6(
						acpi_gbl_global_lock_semaphore,
						ACPI_WAIT_FOREVER);

		flags = FUNC7(acpi_ev_global_lock_pending_lock);

	} while (FUNC4(status));

	acpi_ev_global_lock_pending = FALSE;

	FUNC9(acpi_ev_global_lock_pending_lock, flags);

	FUNC10(status);
}