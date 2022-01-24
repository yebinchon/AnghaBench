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
struct pnp_dev {int /*<<< orphan*/  dev; struct acpi_device* data; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  scalar_t__ acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ AE_NOT_FOUND ; 
 int EPERM ; 
 int /*<<< orphan*/  METHOD_NAME__CRS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pnp_dev*) ; 
 int /*<<< orphan*/  pnpacpi_allocated_resource ; 

int FUNC5(struct pnp_dev *dev)
{
	struct acpi_device *acpi_dev = dev->data;
	acpi_handle handle = acpi_dev->handle;
	acpi_status status;

	FUNC3(&dev->dev, "parse allocated resources\n");

	FUNC4(dev);

	status = FUNC1(handle, METHOD_NAME__CRS,
				     pnpacpi_allocated_resource, dev);

	if (FUNC0(status)) {
		if (status != AE_NOT_FOUND)
			FUNC2(&dev->dev, "can't evaluate _CRS: %d", status);
		return -EPERM;
	}
	return 0;
}