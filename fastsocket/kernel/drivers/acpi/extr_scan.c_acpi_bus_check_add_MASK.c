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
struct acpi_device {int dummy; } ;
struct acpi_bus_ops {scalar_t__ acpi_op_add; scalar_t__ acpi_op_start; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long long ACPI_STA_DEVICE_FUNCTIONING ; 
 unsigned long long ACPI_STA_DEVICE_PRESENT ; 
 int /*<<< orphan*/  AE_CTRL_DEPTH ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device**,int /*<<< orphan*/ ,int,unsigned long long,struct acpi_bus_ops*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_device*) ; 

__attribute__((used)) static acpi_status FUNC5(acpi_handle handle, u32 lvl,
				      void *context, void **return_value)
{
	struct acpi_bus_ops *ops = context;
	int type;
	unsigned long long sta;
	struct acpi_device *device;
	acpi_status status;
	int result;

	result = FUNC3(handle, &type, &sta);
	if (result)
		return AE_OK;

	if (!(sta & ACPI_STA_DEVICE_PRESENT) &&
	    !(sta & ACPI_STA_DEVICE_FUNCTIONING))
		return AE_CTRL_DEPTH;

	/*
	 * We may already have an acpi_device from a previous enumeration.  If
	 * so, we needn't add it again, but we may still have to start it.
	 */
	device = NULL;
	FUNC2(handle, &device);
	if (ops->acpi_op_add && !device)
		FUNC1(&device, handle, type, sta, ops);

	if (!device)
		return AE_CTRL_DEPTH;

	if (ops->acpi_op_start && !(ops->acpi_op_add)) {
		status = FUNC4(device);
		if (FUNC0(status))
			return AE_CTRL_DEPTH;
	}

	if (!*return_value)
		*return_value = device;
	return AE_OK;
}