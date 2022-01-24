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
struct acpi_device {scalar_t__ device_type; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 scalar_t__ ACPI_BUS_TYPE_POWER_BUTTON ; 
 scalar_t__ ACPI_BUS_TYPE_SLEEP_BUTTON ; 
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 int /*<<< orphan*/  ACPI_EVENT_POWER_BUTTON ; 
 int /*<<< orphan*/  ACPI_EVENT_SLEEP_BUTTON ; 
 int /*<<< orphan*/  acpi_device_notify ; 
 int /*<<< orphan*/  acpi_device_notify_fixed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct acpi_device *device)
{
	if (device->device_type == ACPI_BUS_TYPE_POWER_BUTTON)
		FUNC0(ACPI_EVENT_POWER_BUTTON,
						acpi_device_notify_fixed);
	else if (device->device_type == ACPI_BUS_TYPE_SLEEP_BUTTON)
		FUNC0(ACPI_EVENT_SLEEP_BUTTON,
						acpi_device_notify_fixed);
	else
		FUNC1(device->handle, ACPI_DEVICE_NOTIFY,
					   acpi_device_notify);
}