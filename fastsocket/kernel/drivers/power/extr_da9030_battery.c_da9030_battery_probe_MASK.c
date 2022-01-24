#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  parent; struct da9030_battery_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  notifier_call; } ;
struct da9030_charger {int charge_milliamp; int charge_millivolt; int /*<<< orphan*/  work; TYPE_2__ nb; int /*<<< orphan*/  master; int /*<<< orphan*/  debug_file; int /*<<< orphan*/  psy; int /*<<< orphan*/  interval; int /*<<< orphan*/  battery_critical; int /*<<< orphan*/  battery_low; int /*<<< orphan*/  battery_info; } ;
struct da9030_battery_info {int charge_milliamp; int charge_millivolt; int /*<<< orphan*/  battery_critical; int /*<<< orphan*/  battery_low; int /*<<< orphan*/  battery_info; scalar_t__ batmon_interval; } ;

/* Variables and functions */
 int DA9030_EVENT_CHDET ; 
 int DA9030_EVENT_CHIOVER ; 
 int DA9030_EVENT_TBAT ; 
 int DA9030_EVENT_VBATMON ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct da9030_charger*) ; 
 int FUNC3 (struct da9030_charger*) ; 
 int /*<<< orphan*/  FUNC4 (struct da9030_charger*,struct da9030_battery_info*) ; 
 int /*<<< orphan*/  da9030_battery_event ; 
 int /*<<< orphan*/  FUNC5 (struct da9030_charger*) ; 
 int /*<<< orphan*/  da9030_charging_monitor ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct da9030_charger*) ; 
 struct da9030_charger* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct da9030_charger*) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct da9030_charger *charger;
	struct da9030_battery_info *pdata = pdev->dev.platform_data;
	int ret;

	if (pdata == NULL)
		return -EINVAL;

	if (pdata->charge_milliamp >= 1500 ||
	    pdata->charge_millivolt < 4000 ||
	    pdata->charge_millivolt > 4350)
		return -EINVAL;

	charger = FUNC9(sizeof(*charger), GFP_KERNEL);
	if (charger == NULL)
		return -ENOMEM;

	charger->master = pdev->dev.parent;

	/* 10 seconds between monotor runs unless platfrom defines other
	   interval */
	charger->interval = FUNC10(
		(pdata->batmon_interval ? : 10) * 1000);

	charger->charge_milliamp = pdata->charge_milliamp;
	charger->charge_millivolt = pdata->charge_millivolt;
	charger->battery_info = pdata->battery_info;
	charger->battery_low = pdata->battery_low;
	charger->battery_critical = pdata->battery_critical;

	FUNC4(charger, pdata);

	ret = FUNC3(charger);
	if (ret)
		goto err_charger_init;

	FUNC0(&charger->work, da9030_charging_monitor);
	FUNC13(&charger->work, charger->interval);

	charger->nb.notifier_call = da9030_battery_event;
	ret = FUNC6(charger->master, &charger->nb,
				       DA9030_EVENT_CHDET |
				       DA9030_EVENT_VBATMON |
				       DA9030_EVENT_CHIOVER |
				       DA9030_EVENT_TBAT);
	if (ret)
		goto err_notifier;

	FUNC5(charger);
	ret = FUNC12(&pdev->dev, &charger->psy);
	if (ret)
		goto err_ps_register;

	charger->debug_file = FUNC2(charger);
	FUNC11(pdev, charger);
	return 0;

err_ps_register:
	FUNC7(charger->master, &charger->nb,
				   DA9030_EVENT_CHDET | DA9030_EVENT_VBATMON |
				   DA9030_EVENT_CHIOVER | DA9030_EVENT_TBAT);
err_notifier:
	FUNC1(&charger->work);

err_charger_init:
	FUNC8(charger);

	return ret;
}