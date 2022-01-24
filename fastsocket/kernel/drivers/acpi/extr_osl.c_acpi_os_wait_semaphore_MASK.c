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
typedef  scalar_t__ u16 ;
struct semaphore {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_MUTEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_WAIT_FOREVER ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_SUPPORT ; 
 int /*<<< orphan*/  AE_TIME ; 
 long MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct semaphore*,long) ; 
 long FUNC4 (scalar_t__) ; 

acpi_status FUNC5(acpi_handle handle, u32 units, u16 timeout)
{
	acpi_status status = AE_OK;
	struct semaphore *sem = (struct semaphore *)handle;
	long jiffies;
	int ret = 0;

	if (!sem || (units < 1))
		return AE_BAD_PARAMETER;

	if (units > 1)
		return AE_SUPPORT;

	FUNC0((ACPI_DB_MUTEX, "Waiting for semaphore[%p|%d|%d]\n",
			  handle, units, timeout));

	if (timeout == ACPI_WAIT_FOREVER)
		jiffies = MAX_SCHEDULE_TIMEOUT;
	else
		jiffies = FUNC4(timeout);
	
	ret = FUNC3(sem, jiffies);
	if (ret)
		status = AE_TIME;

	if (FUNC1(status)) {
		FUNC0((ACPI_DB_MUTEX,
				  "Failed to acquire semaphore[%p|%d|%d], %s",
				  handle, units, timeout,
				  FUNC2(status)));
	} else {
		FUNC0((ACPI_DB_MUTEX,
				  "Acquired semaphore[%p|%d|%d]", handle,
				  units, timeout));
	}

	return status;
}