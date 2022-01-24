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
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct acpi_device *device){
	acpi_status status;
	acpi_handle handle;
	acpi_handle tmp;
	acpi_handle phandle;

	handle = device->handle;

	status = FUNC2(handle, "_EJ0", &tmp);
	if (FUNC0(status))
		return -ENODEV;

	if ((FUNC1(FUNC2(handle, "_GTF", &tmp))) ||
		(FUNC1(FUNC2(handle, "_GTM", &tmp))) ||
		(FUNC1(FUNC2(handle, "_STM", &tmp))) ||
		(FUNC1(FUNC2(handle, "_SDD", &tmp))))
		return 0;

	if (FUNC3(handle, &phandle))
		return -ENODEV;

        if ((FUNC1(FUNC2(phandle, "_GTF", &tmp))) ||
                (FUNC1(FUNC2(phandle, "_GTM", &tmp))) ||
                (FUNC1(FUNC2(phandle, "_STM", &tmp))) ||
                (FUNC1(FUNC2(phandle, "_SDD", &tmp))))
                return 0;

	return -ENODEV;
}