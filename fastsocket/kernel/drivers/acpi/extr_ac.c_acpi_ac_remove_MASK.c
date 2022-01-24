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
struct acpi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ dev; } ;
struct acpi_ac {TYPE_1__ charger; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*) ; 
 struct acpi_ac* FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_ac*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct acpi_device *device, int type)
{
	struct acpi_ac *ac = NULL;


	if (!device || !FUNC1(device))
		return -EINVAL;

	ac = FUNC1(device);

#ifdef CONFIG_ACPI_SYSFS_POWER
	if (ac->charger.dev)
		power_supply_unregister(&ac->charger);
#endif
#ifdef CONFIG_ACPI_PROCFS_POWER
	acpi_ac_remove_fs(device);
#endif

	FUNC2(ac);

	return 0;
}