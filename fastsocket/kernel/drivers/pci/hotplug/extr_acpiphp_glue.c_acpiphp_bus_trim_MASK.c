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
 int FUNC0 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 int FUNC1 (struct acpi_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(acpi_handle handle)
{
	struct acpi_device *device;
	int retval;

	retval = FUNC0(handle, &device);
	if (retval) {
		FUNC2("acpi_device not found\n");
		return retval;
	}

	retval = FUNC1(device, 1);
	if (retval)
		FUNC3("cannot remove from acpi list\n");

	return retval;
}