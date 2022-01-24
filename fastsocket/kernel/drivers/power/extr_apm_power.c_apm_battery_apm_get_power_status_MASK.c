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
union power_supply_propval {scalar_t__ intval; } ;
struct apm_power_info {int battery_life; int time; int /*<<< orphan*/  units; int /*<<< orphan*/  battery_status; int /*<<< orphan*/  battery_flag; int /*<<< orphan*/  ac_line_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  APM_AC_OFFLINE ; 
 int /*<<< orphan*/  APM_AC_ONLINE ; 
 int /*<<< orphan*/  APM_BATTERY_STATUS_CHARGING ; 
 int /*<<< orphan*/  APM_BATTERY_STATUS_CRITICAL ; 
 int /*<<< orphan*/  APM_BATTERY_STATUS_HIGH ; 
 int /*<<< orphan*/  APM_BATTERY_STATUS_LOW ; 
 int /*<<< orphan*/  APM_UNITS_MINS ; 
 int /*<<< orphan*/  CAPACITY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,union power_supply_propval*) ; 
 scalar_t__ POWER_SUPPLY_STATUS_CHARGING ; 
 scalar_t__ POWER_SUPPLY_STATUS_FULL ; 
 scalar_t__ POWER_SUPPLY_STATUS_NOT_CHARGING ; 
 scalar_t__ POWER_SUPPLY_STATUS_UNKNOWN ; 
 int /*<<< orphan*/  SOURCE_CHARGE ; 
 int /*<<< orphan*/  SOURCE_ENERGY ; 
 int /*<<< orphan*/  SOURCE_VOLTAGE ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  TIME_TO_EMPTY_AVG ; 
 int /*<<< orphan*/  TIME_TO_EMPTY_NOW ; 
 int /*<<< orphan*/  TIME_TO_FULL_AVG ; 
 int /*<<< orphan*/  TIME_TO_FULL_NOW ; 
 int /*<<< orphan*/  apm_mutex ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  main_battery ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct apm_power_info *info)
{
	union power_supply_propval status;
	union power_supply_propval capacity, time_to_full, time_to_empty;

	FUNC4(&apm_mutex);
	FUNC3();
	if (!main_battery) {
		FUNC5(&apm_mutex);
		return;
	}

	/* status */

	if (FUNC0(STATUS, &status))
		status.intval = POWER_SUPPLY_STATUS_UNKNOWN;

	/* ac line status */

	if ((status.intval == POWER_SUPPLY_STATUS_CHARGING) ||
	    (status.intval == POWER_SUPPLY_STATUS_NOT_CHARGING) ||
	    (status.intval == POWER_SUPPLY_STATUS_FULL))
		info->ac_line_status = APM_AC_ONLINE;
	else
		info->ac_line_status = APM_AC_OFFLINE;

	/* battery life (i.e. capacity, in percents) */

	if (FUNC0(CAPACITY, &capacity) == 0) {
		info->battery_life = capacity.intval;
	} else {
		/* try calculate using energy */
		info->battery_life = FUNC1(SOURCE_ENERGY);
		/* if failed try calculate using charge instead */
		if (info->battery_life == -1)
			info->battery_life = FUNC1(SOURCE_CHARGE);
		if (info->battery_life == -1)
			info->battery_life = FUNC1(SOURCE_VOLTAGE);
	}

	/* charging status */

	if (status.intval == POWER_SUPPLY_STATUS_CHARGING) {
		info->battery_status = APM_BATTERY_STATUS_CHARGING;
	} else {
		if (info->battery_life > 50)
			info->battery_status = APM_BATTERY_STATUS_HIGH;
		else if (info->battery_life > 5)
			info->battery_status = APM_BATTERY_STATUS_LOW;
		else
			info->battery_status = APM_BATTERY_STATUS_CRITICAL;
	}
	info->battery_flag = info->battery_status;

	/* time */

	info->units = APM_UNITS_MINS;

	if (status.intval == POWER_SUPPLY_STATUS_CHARGING) {
		if (!FUNC0(TIME_TO_FULL_AVG, &time_to_full) ||
				!FUNC0(TIME_TO_FULL_NOW, &time_to_full))
			info->time = time_to_full.intval / 60;
		else
			info->time = FUNC2(status.intval);
	} else {
		if (!FUNC0(TIME_TO_EMPTY_AVG, &time_to_empty) ||
			      !FUNC0(TIME_TO_EMPTY_NOW, &time_to_empty))
			info->time = time_to_empty.intval / 60;
		else
			info->time = FUNC2(status.intval);
	}

	FUNC5(&apm_mutex);
}