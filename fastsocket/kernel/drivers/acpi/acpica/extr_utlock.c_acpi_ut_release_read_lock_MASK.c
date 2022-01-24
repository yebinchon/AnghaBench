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
struct acpi_rw_lock {scalar_t__ num_readers; int /*<<< orphan*/  reader_mutex; int /*<<< orphan*/  writer_mutex; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_WAIT_FOREVER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

acpi_status FUNC3(struct acpi_rw_lock *lock)
{
	acpi_status status;

	status = FUNC1(lock->reader_mutex, ACPI_WAIT_FOREVER);
	if (FUNC0(status)) {
		return status;
	}

	/* Release the write lock only for the very last reader */

	lock->num_readers--;
	if (lock->num_readers == 0) {
		FUNC2(lock->writer_mutex);
	}

	FUNC2(lock->reader_mutex);
	return status;
}