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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_ec {unsigned long long gpe; unsigned long long global_lock; int /*<<< orphan*/  handle; scalar_t__ data_addr; scalar_t__ command_addr; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_CTRL_TERMINATE ; 
 int /*<<< orphan*/  METHOD_NAME__CRS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_ec*) ; 
 int /*<<< orphan*/  ec_parse_io_ports ; 

__attribute__((used)) static acpi_status
FUNC3(acpi_handle handle, u32 Level, void *context, void **retval)
{
	acpi_status status;
	unsigned long long tmp = 0;

	struct acpi_ec *ec = context;

	/* clear addr values, ec_parse_io_ports depend on it */
	ec->command_addr = ec->data_addr = 0;

	status = FUNC2(handle, METHOD_NAME__CRS,
				     ec_parse_io_ports, ec);
	if (FUNC0(status))
		return status;

	/* Get GPE bit assignment (EC events). */
	/* TODO: Add support for _GPE returning a package */
	status = FUNC1(handle, "_GPE", NULL, &tmp);
	if (FUNC0(status))
		return status;
	ec->gpe = tmp;
	/* Use the global lock for all EC transactions? */
	tmp = 0;
	FUNC1(handle, "_GLK", NULL, &tmp);
	ec->global_lock = tmp;
	ec->handle = handle;
	return AE_CTRL_TERMINATE;
}