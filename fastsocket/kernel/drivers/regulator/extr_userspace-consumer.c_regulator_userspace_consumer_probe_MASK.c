#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct userspace_consumer_data {int /*<<< orphan*/  supplies; int /*<<< orphan*/  num_supplies; scalar_t__ enabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  name; } ;
struct regulator_userspace_consumer_data {scalar_t__ init_on; int /*<<< orphan*/  supplies; int /*<<< orphan*/  num_supplies; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; struct regulator_userspace_consumer_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  attr_group ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct userspace_consumer_data*) ; 
 struct userspace_consumer_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct userspace_consumer_data*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct regulator_userspace_consumer_data *pdata;
	struct userspace_consumer_data *drvdata;
	int ret;

	pdata = pdev->dev.platform_data;
	if (!pdata)
		return -EINVAL;

	drvdata = FUNC2(sizeof(struct userspace_consumer_data), GFP_KERNEL);
	if (drvdata == NULL)
		return -ENOMEM;

	drvdata->name = pdata->name;
	drvdata->num_supplies = pdata->num_supplies;
	drvdata->supplies = pdata->supplies;

	FUNC3(&drvdata->lock);

	ret = FUNC7(&pdev->dev, drvdata->num_supplies,
				 drvdata->supplies);
	if (ret) {
		FUNC0(&pdev->dev, "Failed to get supplies: %d\n", ret);
		goto err_alloc_supplies;
	}

	ret = FUNC8(&pdev->dev.kobj, &attr_group);
	if (ret != 0)
		goto err_create_attrs;

	if (pdata->init_on) {
		ret = FUNC5(drvdata->num_supplies,
					    drvdata->supplies);
		if (ret) {
			FUNC0(&pdev->dev,
				"Failed to set initial state: %d\n", ret);
			goto err_enable;
		}
	}

	drvdata->enabled = pdata->init_on;
	FUNC4(pdev, drvdata);

	return 0;

err_enable:
	FUNC9(&pdev->dev.kobj, &attr_group);

err_create_attrs:
	FUNC6(drvdata->num_supplies, drvdata->supplies);

err_alloc_supplies:
	FUNC1(drvdata);
	return ret;
}