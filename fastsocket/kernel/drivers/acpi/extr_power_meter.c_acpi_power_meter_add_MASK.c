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
struct acpi_power_meter_resource {int* trip; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  lock; struct acpi_device* acpi_dev; scalar_t__ sensors_valid; } ;
struct acpi_device {int /*<<< orphan*/  dev; struct acpi_power_meter_resource* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_POWER_METER_CLASS ; 
 int /*<<< orphan*/  ACPI_POWER_METER_DEVICE_NAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_power_meter_resource*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_power_meter_resource*) ; 
 struct acpi_power_meter_resource* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct acpi_power_meter_resource*) ; 
 int /*<<< orphan*/  FUNC10 (struct acpi_power_meter_resource*) ; 
 int FUNC11 (struct acpi_power_meter_resource*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct acpi_device *device)
{
	int res;
	struct acpi_power_meter_resource *resource;

	if (!device)
		return -EINVAL;

	resource = FUNC7(sizeof(struct acpi_power_meter_resource),
			   GFP_KERNEL);
	if (!resource)
		return -ENOMEM;

	resource->sensors_valid = 0;
	resource->acpi_dev = device;
	FUNC8(&resource->lock);
	FUNC12(FUNC3(device), ACPI_POWER_METER_DEVICE_NAME);
	FUNC12(FUNC2(device), ACPI_POWER_METER_CLASS);
	device->driver_data = resource;

	FUNC4(resource);
	res = FUNC9(resource);
	if (res)
		goto exit_free;

	resource->trip[0] = resource->trip[1] = -1;

	res = FUNC11(resource);
	if (res)
		goto exit_free;

	resource->hwmon_dev = FUNC5(&device->dev);
	if (FUNC0(resource->hwmon_dev)) {
		res = FUNC1(resource->hwmon_dev);
		goto exit_remove;
	}

	res = 0;
	goto exit;

exit_remove:
	FUNC10(resource);
exit_free:
	FUNC6(resource);
exit:
	return res;
}