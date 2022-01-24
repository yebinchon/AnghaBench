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
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  acpi_bus_data_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 

int FUNC3(acpi_handle handle, struct acpi_device **device)
{
	acpi_status status = AE_OK;


	if (!device)
		return -EINVAL;

	/* TBD: Support fixed-feature devices */

	status = FUNC2(handle, acpi_bus_data_handler, (void **)device);
	if (FUNC1(status) || !*device) {
		FUNC0((ACPI_DB_INFO, "No context for object [%p]\n",
				  handle));
		return -ENODEV;
	}

	return 0;
}