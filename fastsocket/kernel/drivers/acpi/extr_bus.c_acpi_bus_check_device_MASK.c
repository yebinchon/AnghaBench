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
struct acpi_device_status {scalar_t__ present; } ;
struct acpi_device {struct acpi_device_status status; TYPE_1__* parent; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;
struct TYPE_2__ {struct acpi_device_status status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct acpi_device_status) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_device*) ; 

__attribute__((used)) static void FUNC5(acpi_handle handle)
{
	struct acpi_device *device;
	acpi_status status;
	struct acpi_device_status old_status;

	if (FUNC3(handle, &device))
		return;
	if (!device)
		return;

	old_status = device->status;

	/*
	 * Make sure this device's parent is present before we go about
	 * messing with the device.
	 */
	if (device->parent && !device->parent->status.present) {
		device->status = device->parent->status;
		return;
	}

	status = FUNC4(device);
	if (FUNC1(status))
		return;

	if (FUNC2(old_status) == FUNC2(device->status))
		return;

	/*
	 * Device Insertion/Removal
	 */
	if ((device->status.present) && !(old_status.present)) {
		FUNC0((ACPI_DB_INFO, "Device insertion detected\n"));
		/* TBD: Handle device insertion */
	} else if (!(device->status.present) && (old_status.present)) {
		FUNC0((ACPI_DB_INFO, "Device removal detected\n"));
		/* TBD: Handle device removal */
	}
}