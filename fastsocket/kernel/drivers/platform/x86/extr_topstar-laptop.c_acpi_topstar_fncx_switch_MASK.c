#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int /*<<< orphan*/  type; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct acpi_object_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct acpi_device *device, bool state)
{
	acpi_status status;
	union acpi_object fncx_params[1] = {
		{ .type = ACPI_TYPE_INTEGER }
	};
	struct acpi_object_list fncx_arg_list = { 1, &fncx_params[0] };

	fncx_params[0].integer.value = state ? 0x86 : 0x87;
	status = FUNC1(device->handle, "FNCX", &fncx_arg_list, NULL);
	if (FUNC0(status)) {
		FUNC2("Unable to switch FNCX notifications\n");
		return -ENODEV;
	}

	return 0;
}