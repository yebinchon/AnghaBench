#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct virtual_consumer_data {int /*<<< orphan*/  regulator; int /*<<< orphan*/  mode; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {char* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * attributes ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct virtual_consumer_data*) ; 
 struct virtual_consumer_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct virtual_consumer_data*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	char *reg_id = pdev->dev.platform_data;
	struct virtual_consumer_data *drvdata;
	int ret, i;

	drvdata = FUNC7(sizeof(struct virtual_consumer_data), GFP_KERNEL);
	if (drvdata == NULL) {
		return -ENOMEM;
	}

	FUNC8(&drvdata->lock);

	drvdata->regulator = FUNC10(&pdev->dev, reg_id);
	if (FUNC1(drvdata->regulator)) {
		ret = FUNC2(drvdata->regulator);
		FUNC3(&pdev->dev, "Failed to obtain supply '%s': %d\n",
			reg_id, ret);
		goto err;
	}

	for (i = 0; i < FUNC0(attributes); i++) {
		ret = FUNC4(&pdev->dev, attributes[i]);
		if (ret != 0) {
			FUNC3(&pdev->dev, "Failed to create attr %d: %d\n",
				i, ret);
			goto err_regulator;
		}
	}

	drvdata->mode = FUNC11(drvdata->regulator);

	FUNC9(pdev, drvdata);

	return 0;

err_regulator:
	FUNC12(drvdata->regulator);
err:
	for (i = 0; i < FUNC0(attributes); i++)
		FUNC5(&pdev->dev, attributes[i]);
	FUNC6(drvdata);
	return ret;
}