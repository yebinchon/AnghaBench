#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  device_class; } ;
struct acpi_device {int /*<<< orphan*/  dev; TYPE_3__ pnp; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct acpi_ac {TYPE_2__ charger; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
#define  ACPI_AC_NOTIFY_STATUS 130 
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ACPI_NOTIFY_BUS_CHECK 129 
#define  ACPI_NOTIFY_DEVICE_CHECK 128 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_ac*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*,int,int) ; 
 struct acpi_ac* FUNC4 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct acpi_device *device, u32 event)
{
	struct acpi_ac *ac = FUNC4(device);


	if (!ac)
		return;

	switch (event) {
	default:
		FUNC0((ACPI_DB_INFO,
				  "Unsupported event [0x%x]\n", event));
	case ACPI_AC_NOTIFY_STATUS:
	case ACPI_NOTIFY_BUS_CHECK:
	case ACPI_NOTIFY_DEVICE_CHECK:
		FUNC1(ac);
		FUNC3(device, event, (u32) ac->state);
		FUNC2(device->pnp.device_class,
						  FUNC6(&device->dev), event,
						  (u32) ac->state);
		FUNC5(device, event, (u32) ac->state);
#ifdef CONFIG_ACPI_SYSFS_POWER
		kobject_uevent(&ac->charger.dev->kobj, KOBJ_CHANGE);
#endif
	}

	return;
}