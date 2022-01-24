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
struct acpi_rw_lock {int /*<<< orphan*/  writer_mutex; int /*<<< orphan*/  reader_mutex; scalar_t__ num_readers; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

acpi_status FUNC2(struct acpi_rw_lock *lock)
{
	acpi_status status;

	lock->num_readers = 0;
	status = FUNC1(&lock->reader_mutex);
	if (FUNC0(status)) {
		return status;
	}

	status = FUNC1(&lock->writer_mutex);
	return status;
}