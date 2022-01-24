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
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  METHOD_NAME__CRS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct acpi_device* hv_acpi_dev ; 
 int /*<<< orphan*/  irq ; 
 int /*<<< orphan*/  probe_event ; 
 int /*<<< orphan*/  vmbus_walk_resources ; 

__attribute__((used)) static int FUNC3(struct acpi_device *device)
{
	acpi_status result;

	hv_acpi_dev = device;

	result = FUNC1(device->handle, METHOD_NAME__CRS,
					vmbus_walk_resources, &irq);

	if (FUNC0(result)) {
		FUNC2(&probe_event);
		return -ENODEV;
	}
	FUNC2(&probe_event);
	return 0;
}