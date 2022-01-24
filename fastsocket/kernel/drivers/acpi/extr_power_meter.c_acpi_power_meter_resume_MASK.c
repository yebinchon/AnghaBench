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
struct acpi_power_meter_resource {int dummy; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct acpi_power_meter_resource* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_power_meter_resource*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_power_meter_resource*) ; 

__attribute__((used)) static int FUNC3(struct acpi_device *device)
{
	struct acpi_power_meter_resource *resource;

	if (!device || !FUNC0(device))
		return -EINVAL;

	resource = FUNC0(device);
	FUNC1(resource);
	FUNC2(resource);

	return 0;
}