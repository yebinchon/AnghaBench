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
struct TYPE_7__ {struct fixed_voltage_config* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int n_voltages; struct fixed_voltage_data* name; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; int /*<<< orphan*/  type; } ;
struct fixed_voltage_data {int enable_high; int is_enabled; TYPE_1__ desc; int /*<<< orphan*/  microvolts; int /*<<< orphan*/  dev; int /*<<< orphan*/  gpio; } ;
struct fixed_voltage_config {int enable_high; int enabled_at_boot; int /*<<< orphan*/  gpio; int /*<<< orphan*/  init_data; int /*<<< orphan*/  supply_name; int /*<<< orphan*/  microvolts; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGULATOR_VOLTAGE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,struct fixed_voltage_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  fixed_voltage_ops ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fixed_voltage_data*) ; 
 struct fixed_voltage_data* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fixed_voltage_data* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct fixed_voltage_data*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,struct fixed_voltage_data*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct fixed_voltage_config *config = pdev->dev.platform_data;
	struct fixed_voltage_data *drvdata;
	int ret;

	drvdata = FUNC11(sizeof(struct fixed_voltage_data), GFP_KERNEL);
	if (drvdata == NULL) {
		FUNC3(&pdev->dev, "Failed to allocate device data\n");
		ret = -ENOMEM;
		goto err;
	}

	drvdata->desc.name = FUNC10(config->supply_name, GFP_KERNEL);
	if (drvdata->desc.name == NULL) {
		FUNC3(&pdev->dev, "Failed to allocate supply name\n");
		ret = -ENOMEM;
		goto err;
	}
	drvdata->desc.type = REGULATOR_VOLTAGE;
	drvdata->desc.owner = THIS_MODULE;
	drvdata->desc.ops = &fixed_voltage_ops;
	drvdata->desc.n_voltages = 1;

	drvdata->microvolts = config->microvolts;
	drvdata->gpio = config->gpio;

	if (FUNC7(config->gpio)) {
		drvdata->enable_high = config->enable_high;

		/* FIXME: Remove below print warning
		 *
		 * config->gpio must be set to -EINVAL by platform code if
		 * GPIO control is not required. However, early adopters
		 * not requiring GPIO control may forget to initialize
		 * config->gpio to -EINVAL. This will cause GPIO 0 to be used
		 * for GPIO control.
		 *
		 * This warning will be removed once there are a couple of users
		 * for this driver.
		 */
		if (!config->gpio)
			FUNC4(&pdev->dev,
				"using GPIO 0 for regulator enable control\n");

		ret = FUNC8(config->gpio, config->supply_name);
		if (ret) {
			FUNC3(&pdev->dev,
			   "Could not obtain regulator enable GPIO %d: %d\n",
							config->gpio, ret);
			goto err_name;
		}

		/* set output direction without changing state
		 * to prevent glitch
		 */
		drvdata->is_enabled = config->enabled_at_boot;
		ret = drvdata->is_enabled ?
				config->enable_high : !config->enable_high;

		ret = FUNC5(config->gpio, ret);
		if (ret) {
			FUNC3(&pdev->dev,
			   "Could not configure regulator enable GPIO %d direction: %d\n",
							config->gpio, ret);
			goto err_gpio;
		}

	} else {
		/* Regulator without GPIO control is considered
		 * always enabled
		 */
		drvdata->is_enabled = 1;
	}

	drvdata->dev = FUNC13(&drvdata->desc, &pdev->dev,
					  config->init_data, drvdata);
	if (FUNC0(drvdata->dev)) {
		ret = FUNC1(drvdata->dev);
		FUNC3(&pdev->dev, "Failed to register regulator: %d\n", ret);
		goto err_gpio;
	}

	FUNC12(pdev, drvdata);

	FUNC2(&pdev->dev, "%s supplying %duV\n", drvdata->desc.name,
		drvdata->microvolts);

	return 0;

err_gpio:
	if (FUNC7(config->gpio))
		FUNC6(config->gpio);
err_name:
	FUNC9(drvdata->desc.name);
err:
	FUNC9(drvdata);
	return ret;
}