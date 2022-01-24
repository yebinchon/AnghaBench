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
typedef  int /*<<< orphan*/  u16 ;
typedef  scalar_t__ acpi_status ;
typedef  int /*<<< orphan*/  acpi_mutex ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_DO_NOT_WAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ AE_TIME ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ex_system_wait_mutex ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

acpi_status FUNC8(acpi_mutex mutex, u16 timeout)
{
	acpi_status status;

	FUNC1(ex_system_wait_mutex);

	status = FUNC6(mutex, ACPI_DO_NOT_WAIT);
	if (FUNC2(status)) {
		FUNC7(status);
	}

	if (status == AE_TIME) {

		/* We must wait, so unlock the interpreter */

		FUNC4();

		status = FUNC6(mutex, timeout);

		FUNC0((ACPI_DB_EXEC,
				  "*** Thread awake after blocking, %s\n",
				  FUNC5(status)));

		/* Reacquire the interpreter */

		FUNC3();
	}

	FUNC7(status);
}