#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct acpi_sbs {scalar_t__ charger_present; int batteries_supported; struct acpi_battery* battery; scalar_t__ manager_present; TYPE_2__ charger; } ;
struct TYPE_8__ {TYPE_3__* dev; } ;
struct acpi_battery {scalar_t__ present; TYPE_4__ bat; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_AC_CLASS ; 
 int /*<<< orphan*/  ACPI_AC_DIR_NAME ; 
 int /*<<< orphan*/  ACPI_BATTERY_CLASS ; 
 int /*<<< orphan*/  ACPI_SBS_NOTIFY_STATUS ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int MAX_SBS_BAT ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_sbs*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_battery*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *context)
{
	int id;
	struct acpi_sbs *sbs = context;
	struct acpi_battery *bat;
	u8 saved_charger_state = sbs->charger_present;
	u8 saved_battery_state;
	FUNC0(sbs);
	if (sbs->charger_present != saved_charger_state) {
#ifdef CONFIG_ACPI_PROC_EVENT
		acpi_bus_generate_proc_event4(ACPI_AC_CLASS, ACPI_AC_DIR_NAME,
					      ACPI_SBS_NOTIFY_STATUS,
					      sbs->charger_present);
#endif
#ifdef CONFIG_ACPI_SYSFS_POWER
		kobject_uevent(&sbs->charger.dev->kobj, KOBJ_CHANGE);
#endif
	}
	if (sbs->manager_present) {
		for (id = 0; id < MAX_SBS_BAT; ++id) {
			if (!(sbs->batteries_supported & (1 << id)))
				continue;
			bat = &sbs->battery[id];
			saved_battery_state = bat->present;
			FUNC1(bat);
			if (saved_battery_state == bat->present)
				continue;
#ifdef CONFIG_ACPI_PROC_EVENT
			acpi_bus_generate_proc_event4(ACPI_BATTERY_CLASS,
						      bat->name,
						      ACPI_SBS_NOTIFY_STATUS,
						      bat->present);
#endif
#ifdef CONFIG_ACPI_SYSFS_POWER
			kobject_uevent(&bat->bat.dev->kobj, KOBJ_CHANGE);
#endif
		}
	}
}