#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct fixed_voltage_data* name; } ;
struct fixed_voltage_data {TYPE_1__ desc; int /*<<< orphan*/  gpio; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fixed_voltage_data*) ; 
 struct fixed_voltage_data* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct fixed_voltage_data *drvdata = FUNC3(pdev);

	FUNC4(drvdata->dev);
	if (FUNC1(drvdata->gpio))
		FUNC0(drvdata->gpio);
	FUNC2(drvdata->desc.name);
	FUNC2(drvdata);

	return 0;
}