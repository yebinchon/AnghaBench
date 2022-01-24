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
struct TYPE_2__ {int flags; scalar_t__ configurable_cap; } ;
struct acpi_power_meter_resource {TYPE_1__ caps; } ;

/* Variables and functions */
 int POWER_METER_CAN_CAP ; 
 int POWER_METER_CAN_MEASURE ; 
 int POWER_METER_CAN_TRIP ; 
 int /*<<< orphan*/  meter_ro_attrs ; 
 int /*<<< orphan*/  meter_rw_attrs ; 
 int /*<<< orphan*/  misc_attrs ; 
 int /*<<< orphan*/  misc_cap_attrs ; 
 int FUNC0 (struct acpi_power_meter_resource*) ; 
 int FUNC1 (struct acpi_power_meter_resource*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct acpi_power_meter_resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_power_meter_resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_power_meter_resource*) ; 
 int /*<<< orphan*/  ro_cap_attrs ; 
 int /*<<< orphan*/  rw_cap_attrs ; 
 int /*<<< orphan*/  trip_attrs ; 

__attribute__((used)) static int FUNC5(struct acpi_power_meter_resource *resource)
{
	int res = 0;

	res = FUNC0(resource);
	if (res)
		return res;

	if (resource->caps.flags & POWER_METER_CAN_MEASURE) {
		res = FUNC1(resource, meter_ro_attrs);
		if (res)
			goto error;
		res = FUNC2(resource, meter_rw_attrs);
		if (res)
			goto error;
	}

	if (resource->caps.flags & POWER_METER_CAN_CAP) {
		if (resource->caps.configurable_cap) {
			res = FUNC2(resource, rw_cap_attrs);
			if (res)
				goto error;
		} else {
			res = FUNC1(resource, ro_cap_attrs);
			if (res)
				goto error;
		}
		res = FUNC1(resource, misc_cap_attrs);
		if (res)
			goto error;
	}

	if (resource->caps.flags & POWER_METER_CAN_TRIP) {
		res = FUNC2(resource, trip_attrs);
		if (res)
			goto error;
	}

	res = FUNC1(resource, misc_attrs);
	if (res)
		goto error;

	return res;
error:
	FUNC4(resource);
	FUNC3(resource);
	return res;
}