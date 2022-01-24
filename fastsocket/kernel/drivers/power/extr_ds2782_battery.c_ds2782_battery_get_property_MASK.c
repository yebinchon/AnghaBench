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
union power_supply_propval {int /*<<< orphan*/  intval; } ;
struct power_supply {int dummy; } ;
struct ds2782_info {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CAPACITY 132 
#define  POWER_SUPPLY_PROP_CURRENT_NOW 131 
#define  POWER_SUPPLY_PROP_STATUS 130 
#define  POWER_SUPPLY_PROP_TEMP 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_NOW 128 
 int FUNC0 (struct ds2782_info*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ds2782_info*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ds2782_info*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ds2782_info*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ds2782_info*,int /*<<< orphan*/ *) ; 
 struct ds2782_info* FUNC5 (struct power_supply*) ; 

__attribute__((used)) static int FUNC6(struct power_supply *psy,
				       enum power_supply_property prop,
				       union power_supply_propval *val)
{
	struct ds2782_info *info = FUNC5(psy);
	int ret;

	switch (prop) {
	case POWER_SUPPLY_PROP_STATUS:
		ret = FUNC2(info, &val->intval);
		break;

	case POWER_SUPPLY_PROP_CAPACITY:
		ret = FUNC0(info, &val->intval);
		break;

	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
		ret = FUNC4(info, &val->intval);
		break;

	case POWER_SUPPLY_PROP_CURRENT_NOW:
		ret = FUNC1(info, &val->intval);
		break;

	case POWER_SUPPLY_PROP_TEMP:
		ret = FUNC3(info, &val->intval);
		break;

	default:
		ret = -EINVAL;
	}

	return ret;
}