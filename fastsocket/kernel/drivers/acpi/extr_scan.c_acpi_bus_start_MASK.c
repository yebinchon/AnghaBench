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
struct acpi_bus_ops {int acpi_op_start; } ;
typedef  int /*<<< orphan*/  ops ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct acpi_bus_ops*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_bus_ops*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct acpi_device *device)
{
	struct acpi_bus_ops ops;

	if (!device)
		return -EINVAL;

	FUNC1(&ops, 0, sizeof(ops));
	ops.acpi_op_start = 1;

	return FUNC0(device->handle, &ops, NULL);
}