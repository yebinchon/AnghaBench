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
struct acpiphp_func {int /*<<< orphan*/  handle; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BUS_TYPE_DEVICE ; 
 int FUNC0 (struct acpi_device**,struct acpi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 int FUNC2 (struct acpi_device*) ; 
 int FUNC3 (struct acpi_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int FUNC6(struct acpiphp_func *func)
{
	acpi_handle phandle;
	struct acpi_device *device, *pdevice;
	int ret_val;

	FUNC4(func->handle, &phandle);
	if (FUNC1(phandle, &pdevice)) {
		FUNC5("no parent device, assuming NULL\n");
		pdevice = NULL;
	}
	if (!FUNC1(func->handle, &device)) {
		FUNC5("bus exists... trim\n");
		/* this shouldn't be in here, so remove
		 * the bus then re-add it...
		 */
		ret_val = FUNC3(device, 1);
		FUNC5("acpi_bus_trim return %x\n", ret_val);
	}

	ret_val = FUNC0(&device, pdevice, func->handle,
		ACPI_BUS_TYPE_DEVICE);
	if (ret_val) {
		FUNC5("error adding bus, %x\n",
			-ret_val);
		goto acpiphp_bus_add_out;
	}
	ret_val = FUNC2(device);

acpiphp_bus_add_out:
	return ret_val;
}