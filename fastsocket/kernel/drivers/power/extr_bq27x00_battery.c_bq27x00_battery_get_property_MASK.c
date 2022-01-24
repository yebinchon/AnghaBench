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
union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct bq27x00_device_info {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CAPACITY 132 
#define  POWER_SUPPLY_PROP_CURRENT_NOW 131 
#define  POWER_SUPPLY_PROP_PRESENT 130 
#define  POWER_SUPPLY_PROP_TEMP 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_NOW 128 
 int FUNC0 (struct bq27x00_device_info*) ; 
 int FUNC1 (struct bq27x00_device_info*) ; 
 int FUNC2 (struct bq27x00_device_info*) ; 
 int FUNC3 (struct bq27x00_device_info*) ; 
 struct bq27x00_device_info* FUNC4 (struct power_supply*) ; 

__attribute__((used)) static int FUNC5(struct power_supply *psy,
					enum power_supply_property psp,
					union power_supply_propval *val)
{
	struct bq27x00_device_info *di = FUNC4(psy);

	switch (psp) {
	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
	case POWER_SUPPLY_PROP_PRESENT:
		val->intval = FUNC3(di);
		if (psp == POWER_SUPPLY_PROP_PRESENT)
			val->intval = val->intval <= 0 ? 0 : 1;
		break;
	case POWER_SUPPLY_PROP_CURRENT_NOW:
		val->intval = FUNC0(di);
		break;
	case POWER_SUPPLY_PROP_CAPACITY:
		val->intval = FUNC1(di);
		break;
	case POWER_SUPPLY_PROP_TEMP:
		val->intval = FUNC2(di);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}