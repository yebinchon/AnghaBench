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
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct thermal_cooling_device {TYPE_2__ device; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct acpi_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 struct thermal_cooling_device* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct thermal_cooling_device*) ; 

__attribute__((used)) static int FUNC3(struct acpi_device *device, int type)
{
	struct thermal_cooling_device *cdev = FUNC0(device);

	if (!device || !cdev)
		return -EINVAL;

	FUNC1(&device->dev.kobj, "thermal_cooling");
	FUNC1(&cdev->device.kobj, "device");
	FUNC2(cdev);

	return 0;
}