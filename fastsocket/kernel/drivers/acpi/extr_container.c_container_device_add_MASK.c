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
 int ENODEV ; 
 scalar_t__ FUNC0 (struct acpi_device**,struct acpi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 int FUNC2 (struct acpi_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct acpi_device **device, acpi_handle handle)
{
	acpi_handle phandle;
	struct acpi_device *pdev;
	int result;


	if (FUNC3(handle, &phandle)) {
		return -ENODEV;
	}

	if (FUNC1(phandle, &pdev)) {
		return -ENODEV;
	}

	if (FUNC0(device, pdev, handle, ACPI_BUS_TYPE_DEVICE)) {
		return -ENODEV;
	}

	result = FUNC2(*device);

	return result;
}