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
union power_supply_propval {int intval; } ;
struct wm97xx_pdata {struct wm97xx_batt_pdata* batt_pdata; } ;
struct wm97xx_batt_pdata {int batt_tech; int max_voltage; int min_voltage; int /*<<< orphan*/  temp_aux; int /*<<< orphan*/  batt_aux; } ;
struct power_supply {TYPE_2__* dev; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct TYPE_3__ {struct wm97xx_pdata* platform_data; } ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_PRESENT 134 
#define  POWER_SUPPLY_PROP_STATUS 133 
#define  POWER_SUPPLY_PROP_TECHNOLOGY 132 
#define  POWER_SUPPLY_PROP_TEMP 131 
#define  POWER_SUPPLY_PROP_VOLTAGE_MAX 130 
#define  POWER_SUPPLY_PROP_VOLTAGE_MIN 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_NOW 128 
 int bat_status ; 
 int FUNC0 (struct power_supply*) ; 
 int FUNC1 (struct power_supply*) ; 

__attribute__((used)) static int FUNC2(struct power_supply *bat_ps,
			    enum power_supply_property psp,
			    union power_supply_propval *val)
{
	struct wm97xx_pdata *wmdata = bat_ps->dev->parent->platform_data;
	struct wm97xx_batt_pdata *pdata = wmdata->batt_pdata;

	switch (psp) {
	case POWER_SUPPLY_PROP_STATUS:
		val->intval = bat_status;
		break;
	case POWER_SUPPLY_PROP_TECHNOLOGY:
		val->intval = pdata->batt_tech;
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
		if (pdata->batt_aux >= 0)
			val->intval = FUNC0(bat_ps);
		else
			return -EINVAL;
		break;
	case POWER_SUPPLY_PROP_TEMP:
		if (pdata->temp_aux >= 0)
			val->intval = FUNC1(bat_ps);
		else
			return -EINVAL;
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_MAX:
		if (pdata->max_voltage >= 0)
			val->intval = pdata->max_voltage;
		else
			return -EINVAL;
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_MIN:
		if (pdata->min_voltage >= 0)
			val->intval = pdata->min_voltage;
		else
			return -EINVAL;
		break;
	case POWER_SUPPLY_PROP_PRESENT:
		val->intval = 1;
		break;
	default:
		return -EINVAL;
	}
	return 0;
}