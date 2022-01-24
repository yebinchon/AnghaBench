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
struct dock_station {scalar_t__ handle; } ;
struct dock_dependent_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct dock_station*,struct dock_dependent_device*) ; 
 struct dock_dependent_device* FUNC4 (scalar_t__) ; 

__attribute__((used)) static acpi_status
FUNC5(acpi_handle handle, u32 lvl, void *context, void **rv)
{
	acpi_status status;
	acpi_handle tmp, parent;
	struct dock_station *ds = context;
	struct dock_dependent_device *dd;

	status = FUNC1(handle, &tmp);
	if (FUNC0(status)) {
		/* try the parent device as well */
		status = FUNC2(handle, &parent);
		if (FUNC0(status))
			goto fdd_out;
		/* see if parent is dependent on dock */
		status = FUNC1(parent, &tmp);
		if (FUNC0(status))
			goto fdd_out;
	}

	if (tmp == ds->handle) {
		dd = FUNC4(handle);
		if (dd)
			FUNC3(ds, dd);
	}
fdd_out:
	return AE_OK;
}