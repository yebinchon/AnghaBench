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
struct acpi_power_meter_resource {int num_domain_devices; int /*<<< orphan*/  holders_dir; struct acpi_device** domain_devices; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct acpi_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acpi_device**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct acpi_power_meter_resource *resource)
{
	int i;

	if (!resource->num_domain_devices)
		return;

	for (i = 0; i < resource->num_domain_devices; i++) {
		struct acpi_device *obj = resource->domain_devices[i];
		if (!obj)
			continue;

		FUNC4(resource->holders_dir,
				  FUNC1(&obj->dev.kobj));
		FUNC3(&obj->dev);
	}

	FUNC0(resource->domain_devices);
	FUNC2(resource->holders_dir);
}