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
struct ds2760_device_info {int charge_status; int full_counter; int current_uA; int /*<<< orphan*/  bat; int /*<<< orphan*/  full_active_uAh; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* POWER_SUPPLY_STATUS_CHARGING ; 
 int POWER_SUPPLY_STATUS_DISCHARGING ; 
 int POWER_SUPPLY_STATUS_FULL ; 
 int POWER_SUPPLY_STATUS_NOT_CHARGING ; 
 int POWER_SUPPLY_STATUS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ds2760_device_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ds2760_device_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ds2760_device_info *di)
{
	int old_charge_status = di->charge_status;

	FUNC1(di);

	if (di->charge_status == POWER_SUPPLY_STATUS_UNKNOWN)
		di->full_counter = 0;

	if (FUNC3(&di->bat)) {
		if (di->current_uA > 10000) {
			di->charge_status = POWER_SUPPLY_STATUS_CHARGING;
			di->full_counter = 0;
		} else if (di->current_uA < -5000) {
			if (di->charge_status != POWER_SUPPLY_STATUS_NOT_CHARGING)
				FUNC0(di->dev, "not enough power to "
					   "charge\n");
			di->charge_status = POWER_SUPPLY_STATUS_NOT_CHARGING;
			di->full_counter = 0;
		} else if (di->current_uA < 10000 &&
			    di->charge_status != POWER_SUPPLY_STATUS_FULL) {

			/* Don't consider the battery to be full unless
			 * we've seen the current < 10 mA at least two
			 * consecutive times. */

			di->full_counter++;

			if (di->full_counter < 2) {
				di->charge_status = POWER_SUPPLY_STATUS_CHARGING;
			} else {
				di->charge_status = POWER_SUPPLY_STATUS_FULL;
				FUNC2(di,
						di->full_active_uAh);
			}
		}
	} else {
		di->charge_status = POWER_SUPPLY_STATUS_DISCHARGING;
		di->full_counter = 0;
	}

	if (di->charge_status != old_charge_status)
		FUNC4(&di->bat);
}