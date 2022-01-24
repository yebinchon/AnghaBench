#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int value; } ;
union acpi_object {TYPE_1__ integer; int /*<<< orphan*/  member_0; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/ * acpi_handle ;
struct TYPE_4__ {int max_brightness; int /*<<< orphan*/  acpi_handle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  AE_OK ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUJLAPTOP_DBG_ERROR ; 
 int /*<<< orphan*/  FUJLAPTOP_DBG_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct acpi_object_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 TYPE_2__* fujitsu ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(int level)
{
	acpi_status status = AE_OK;
	union acpi_object arg0 = { ACPI_TYPE_INTEGER };
	struct acpi_object_list arg_list = { 1, &arg0 };
	acpi_handle handle = NULL;

	FUNC3(FUJLAPTOP_DBG_TRACE, "set lcd level via SBL2 [%d]\n",
		    level);

	if (level < 0 || level >= fujitsu->max_brightness)
		return -EINVAL;

	status = FUNC2(fujitsu->acpi_handle, "SBL2", &handle);
	if (FUNC0(status)) {
		FUNC3(FUJLAPTOP_DBG_ERROR, "SBL2 not present\n");
		return -ENODEV;
	}

	arg0.integer.value = level;

	status = FUNC1(handle, NULL, &arg_list, NULL);
	if (FUNC0(status))
		return -ENODEV;

	return 0;
}