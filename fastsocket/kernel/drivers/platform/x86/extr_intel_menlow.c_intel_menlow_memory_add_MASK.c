#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct thermal_cooling_device {TYPE_1__ device; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct acpi_device {TYPE_2__ dev; struct thermal_cooling_device* driver_data; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct thermal_cooling_device*) ; 
 int /*<<< orphan*/  MEMORY_GET_BANDWIDTH ; 
 int /*<<< orphan*/  MEMORY_SET_BANDWIDTH ; 
 int FUNC2 (struct thermal_cooling_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  memory_cooling_ops ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct thermal_cooling_device* FUNC6 (char*,struct acpi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct thermal_cooling_device*) ; 

__attribute__((used)) static int FUNC8(struct acpi_device *device)
{
	int result = -ENODEV;
	acpi_status status = AE_OK;
	acpi_handle dummy;
	struct thermal_cooling_device *cdev;

	if (!device)
		return -EINVAL;

	status = FUNC3(device->handle, MEMORY_GET_BANDWIDTH, &dummy);
	if (FUNC0(status))
		goto end;

	status = FUNC3(device->handle, MEMORY_SET_BANDWIDTH, &dummy);
	if (FUNC0(status))
		goto end;

	cdev = FUNC6("Memory controller", device,
					       &memory_cooling_ops);
	if (FUNC1(cdev)) {
		result = FUNC2(cdev);
		goto end;
	}

	device->driver_data = cdev;
	result = FUNC4(&device->dev.kobj,
				&cdev->device.kobj, "thermal_cooling");
	if (result)
		goto unregister;

	result = FUNC4(&cdev->device.kobj,
				&device->dev.kobj, "device");
	if (result) {
		FUNC5(&device->dev.kobj, "thermal_cooling");
		goto unregister;
	}

 end:
	return result;

 unregister:
	FUNC7(cdev);
	return result;

}