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
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BUS_TYPE_DEVICE ; 
 int FUNC0 (struct acpi_device**,struct acpi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static struct acpi_device * FUNC4(acpi_handle handle)
{
	struct acpi_device *device = NULL;
	struct acpi_device *parent_device;
	acpi_handle parent;
	int ret;

	if (FUNC1(handle, &device)) {
		/*
		 * no device created for this object,
		 * so we should create one.
		 */
		FUNC2(handle, &parent);
		if (FUNC1(parent, &parent_device))
			parent_device = NULL;

		ret = FUNC0(&device, parent_device, handle,
			ACPI_BUS_TYPE_DEVICE);
		if (ret) {
			FUNC3("error adding bus, %x\n",
				-ret);
			return NULL;
		}
	}
	return device;
}