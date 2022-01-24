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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct acpi_battery {int power_unit; TYPE_1__ bat; scalar_t__ update_time; } ;

/* Variables and functions */
 int FUNC0 (struct acpi_battery*) ; 
 int FUNC1 (struct acpi_battery*) ; 
 int FUNC2 (struct acpi_battery*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_battery*) ; 
 int FUNC4 (struct acpi_battery*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_battery*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_battery*) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_battery*) ; 

__attribute__((used)) static int FUNC8(struct acpi_battery *battery, bool get_info)
{
	int result, old_present = FUNC4(battery);
#ifdef CONFIG_ACPI_SYSFS_POWER
	int old_power_unit = battery->power_unit;
#endif
	result = FUNC2(battery);
	if (result)
		return result;
#ifdef CONFIG_ACPI_SYSFS_POWER
	if (!acpi_battery_present(battery)) {
		sysfs_remove_battery(battery);
		battery->update_time = 0;
		return 0;
	}
#endif
	if (!battery->update_time ||
	    old_present != FUNC4(battery)) {
		result = FUNC0(battery);
		if (result)
			return result;
		FUNC5(battery);
		FUNC3(battery);
	}
#ifdef CONFIG_ACPI_SYSFS_POWER
	if (!battery->bat.dev)
		sysfs_add_battery(battery);
#endif
	if (get_info) {
		FUNC0(battery);
#ifdef CONFIG_ACPI_SYSFS_POWER
		if (old_power_unit != battery->power_unit) {
			/* The battery has changed its reporting units */
			sysfs_remove_battery(battery);
			sysfs_add_battery(battery);
		}
#endif
	}
	return FUNC1(battery);
}