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
struct acpi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  handle; int /*<<< orphan*/  wakeup_list; int /*<<< orphan*/  node; scalar_t__ parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  acpi_bus_data_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_device_lock ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct acpi_device *device, int type)
{
	FUNC4(&acpi_device_lock);
	if (device->parent)
		FUNC3(&device->node);

	FUNC3(&device->wakeup_list);
	FUNC5(&acpi_device_lock);

	FUNC0(device->handle, acpi_bus_data_handler);

	FUNC1(device);
	FUNC2(&device->dev);
}