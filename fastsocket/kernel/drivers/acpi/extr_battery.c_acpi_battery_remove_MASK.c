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
struct acpi_device {int dummy; } ;
struct acpi_battery {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*) ; 
 struct acpi_battery* FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_battery*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_battery*) ; 

__attribute__((used)) static int FUNC5(struct acpi_device *device, int type)
{
	struct acpi_battery *battery = NULL;

	if (!device || !FUNC1(device))
		return -EINVAL;
	battery = FUNC1(device);
#ifdef CONFIG_ACPI_PROCFS_POWER
	acpi_battery_remove_fs(device);
#endif
#ifdef CONFIG_ACPI_SYSFS_POWER
	sysfs_remove_battery(battery);
#endif
	FUNC3(&battery->lock);
	FUNC2(battery);
	return 0;
}