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
struct acpi_battery {int alarm_present; scalar_t__ design_capacity_warning; scalar_t__ alarm; TYPE_1__* device; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/ * acpi_handle ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int FUNC1 (struct acpi_battery*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC3(struct acpi_battery *battery)
{
	acpi_status status = AE_OK;
	acpi_handle handle = NULL;

	/* See if alarms are supported, and if so, set default */
	status = FUNC2(battery->device->handle, "_BTP", &handle);
	if (FUNC0(status)) {
		battery->alarm_present = 0;
		return 0;
	}
	battery->alarm_present = 1;
	if (!battery->alarm)
		battery->alarm = battery->design_capacity_warning;
	return FUNC1(battery);
}