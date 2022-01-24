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
struct TYPE_3__ {int /*<<< orphan*/  value; } ;
union acpi_object {TYPE_1__ integer; int /*<<< orphan*/  type; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
struct acpi_battery {int /*<<< orphan*/  alarm; int /*<<< orphan*/  lock; TYPE_2__* device; int /*<<< orphan*/  alarm_present; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_4__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_battery*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct acpi_object_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct acpi_battery *battery)
{
	acpi_status status = 0;
	union acpi_object arg0 = { .type = ACPI_TYPE_INTEGER };
	struct acpi_object_list arg_list = { 1, &arg0 };

	if (!FUNC2(battery)|| !battery->alarm_present)
		return -ENODEV;

	arg0.integer.value = battery->alarm;

	FUNC4(&battery->lock);
	status = FUNC3(battery->device->handle, "_BTP",
				 &arg_list, NULL);
	FUNC5(&battery->lock);

	if (FUNC1(status))
		return -ENODEV;

	FUNC0((ACPI_DB_INFO, "Alarm set to %d\n", battery->alarm));
	return 0;
}