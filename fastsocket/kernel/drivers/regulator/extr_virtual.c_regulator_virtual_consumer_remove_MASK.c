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
struct virtual_consumer_data {int /*<<< orphan*/  regulator; scalar_t__ enabled; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * attributes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct virtual_consumer_data*) ; 
 struct virtual_consumer_data* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct virtual_consumer_data *drvdata = FUNC3(pdev);
	int i;

	for (i = 0; i < FUNC0(attributes); i++)
		FUNC1(&pdev->dev, attributes[i]);
	if (drvdata->enabled)
		FUNC4(drvdata->regulator);
	FUNC5(drvdata->regulator);

	FUNC2(drvdata);

	return 0;
}