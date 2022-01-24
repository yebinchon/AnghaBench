#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  external_power_changed; int /*<<< orphan*/  set_charged; int /*<<< orphan*/  get_property; int /*<<< orphan*/  num_properties; int /*<<< orphan*/  properties; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct ds2760_device_info {char* raw; TYPE_1__ bat; int /*<<< orphan*/  monitor_work; int /*<<< orphan*/  monitor_wqueue; int /*<<< orphan*/  set_charged_work; TYPE_2__* dev; int /*<<< orphan*/  charge_status; int /*<<< orphan*/  w1_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char DS2760_STATUS_PMOD ; 
 size_t DS2760_STATUS_REG ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POWER_SUPPLY_STATUS_UNKNOWN ; 
 int /*<<< orphan*/  POWER_SUPPLY_TYPE_BATTERY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ current_accum ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  ds2760_battery_external_power_changed ; 
 int /*<<< orphan*/  ds2760_battery_get_property ; 
 int /*<<< orphan*/  ds2760_battery_props ; 
 int /*<<< orphan*/  FUNC5 (struct ds2760_device_info*) ; 
 int /*<<< orphan*/  ds2760_battery_set_charged ; 
 int /*<<< orphan*/  ds2760_battery_set_charged_work ; 
 int /*<<< orphan*/  FUNC6 (struct ds2760_device_info*,scalar_t__) ; 
 int /*<<< orphan*/  ds2760_battery_work ; 
 int /*<<< orphan*/  FUNC7 (struct ds2760_device_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ds2760_device_info*,char) ; 
 int /*<<< orphan*/  FUNC9 (struct ds2760_device_info*) ; 
 struct ds2760_device_info* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct ds2760_device_info*) ; 
 scalar_t__ pmod_enabled ; 
 int FUNC12 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ rated_capacity ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	char status;
	int retval = 0;
	struct ds2760_device_info *di;

	di = FUNC10(sizeof(*di), GFP_KERNEL);
	if (!di) {
		retval = -ENOMEM;
		goto di_alloc_failed;
	}

	FUNC11(pdev, di);

	di->dev			= &pdev->dev;
	di->w1_dev		= pdev->dev.parent;
	di->bat.name		= FUNC4(&pdev->dev);
	di->bat.type		= POWER_SUPPLY_TYPE_BATTERY;
	di->bat.properties	= ds2760_battery_props;
	di->bat.num_properties	= FUNC0(ds2760_battery_props);
	di->bat.get_property	= ds2760_battery_get_property;
	di->bat.set_charged	= ds2760_battery_set_charged;
	di->bat.external_power_changed =
				  ds2760_battery_external_power_changed;

	di->charge_status = POWER_SUPPLY_STATUS_UNKNOWN;

	/* enable sleep mode feature */
	FUNC5(di);
	status = di->raw[DS2760_STATUS_REG];
	if (pmod_enabled)
		status |= DS2760_STATUS_PMOD;
	else
		status &= ~DS2760_STATUS_PMOD;

	FUNC8(di, status);

	/* set rated capacity from module param */
	if (rated_capacity)
		FUNC7(di, rated_capacity);

	/* set current accumulator if given as parameter.
	 * this should only be done for bootstrapping the value */
	if (current_accum)
		FUNC6(di, current_accum);

	retval = FUNC12(&pdev->dev, &di->bat);
	if (retval) {
		FUNC3(di->dev, "failed to register battery\n");
		goto batt_failed;
	}

	FUNC1(&di->monitor_work, ds2760_battery_work);
	FUNC1(&di->set_charged_work,
			  ds2760_battery_set_charged_work);
	di->monitor_wqueue = FUNC2(FUNC4(&pdev->dev));
	if (!di->monitor_wqueue) {
		retval = -ESRCH;
		goto workqueue_failed;
	}
	FUNC14(di->monitor_wqueue, &di->monitor_work, HZ * 1);

	goto success;

workqueue_failed:
	FUNC13(&di->bat);
batt_failed:
	FUNC9(di);
di_alloc_failed:
success:
	return retval;
}