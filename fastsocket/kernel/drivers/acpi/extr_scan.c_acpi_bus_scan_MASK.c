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
struct acpi_device {int dummy; } ;
struct acpi_bus_ops {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_bus_ops*,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_bus_ops*,void**),struct acpi_bus_ops*,void**) ; 

__attribute__((used)) static int FUNC3(acpi_handle handle, struct acpi_bus_ops *ops,
			 struct acpi_device **child)
{
	acpi_status status;
	void *device = NULL;

	status = FUNC1(handle, 0, ops, &device);
	if (FUNC0(status))
		FUNC2(ACPI_TYPE_ANY, handle, ACPI_UINT32_MAX,
				    acpi_bus_check_add, ops, &device);

	if (child)
		*child = device;

	if (device)
		return 0;
	else
		return -ENODEV;
}