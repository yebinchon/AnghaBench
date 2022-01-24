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
struct acpi_thermal {int polling_frequency; TYPE_1__* thermal_zone; scalar_t__ tz_enabled; } ;
struct TYPE_2__ {int polling_delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(struct acpi_thermal *tz, int seconds)
{

	if (!tz)
		return -EINVAL;

	tz->polling_frequency = seconds * 10;	/* Convert value to deci-seconds */

	tz->thermal_zone->polling_delay = seconds * 1000;

	if (tz->tz_enabled)
		FUNC1(tz->thermal_zone);

	FUNC0((ACPI_DB_INFO,
			  "Polling frequency set to %lu seconds\n",
			  tz->polling_frequency/10));

	return 0;
}