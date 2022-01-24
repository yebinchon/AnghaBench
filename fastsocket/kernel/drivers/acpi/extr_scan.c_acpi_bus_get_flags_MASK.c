#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int dynamic_status; int removable; int ejectable; int lockable; int power_manageable; int wake_capable; } ;
struct acpi_device {TYPE_1__ flags; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/ * acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC3(struct acpi_device *device)
{
	acpi_status status = AE_OK;
	acpi_handle temp = NULL;


	/* Presence of _STA indicates 'dynamic_status' */
	status = FUNC2(device->handle, "_STA", &temp);
	if (FUNC1(status))
		device->flags.dynamic_status = 1;

	/* Presence of _RMV indicates 'removable' */
	status = FUNC2(device->handle, "_RMV", &temp);
	if (FUNC1(status))
		device->flags.removable = 1;

	/* Presence of _EJD|_EJ0 indicates 'ejectable' */
	status = FUNC2(device->handle, "_EJD", &temp);
	if (FUNC1(status))
		device->flags.ejectable = 1;
	else {
		status = FUNC2(device->handle, "_EJ0", &temp);
		if (FUNC1(status))
			device->flags.ejectable = 1;
	}

	/* Presence of _LCK indicates 'lockable' */
	status = FUNC2(device->handle, "_LCK", &temp);
	if (FUNC1(status))
		device->flags.lockable = 1;

	/* Presence of _PS0|_PR0 indicates 'power manageable' */
	status = FUNC2(device->handle, "_PS0", &temp);
	if (FUNC0(status))
		status = FUNC2(device->handle, "_PR0", &temp);
	if (FUNC1(status))
		device->flags.power_manageable = 1;

	/* Presence of _PRW indicates wake capable */
	status = FUNC2(device->handle, "_PRW", &temp);
	if (FUNC1(status))
		device->flags.wake_capable = 1;

	/* TBD: Performance management */

	return 0;
}