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
struct device {int dummy; } ;
struct atk_data {int /*<<< orphan*/  hwmon_dev; TYPE_1__* acpi_dev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct atk_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct atk_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct atk_data *data)
{
	struct device *dev = &data->acpi_dev->dev;
	int err;

	FUNC4(dev, "registering hwmon device\n");
	data->hwmon_dev = FUNC5(dev);
	if (FUNC0(data->hwmon_dev))
		return FUNC1(data->hwmon_dev);

	FUNC4(dev, "populating sysfs directory\n");
	err = FUNC2(data);
	if (err)
		goto remove;

	return 0;
remove:
	/* Cleanup the registered files */
	FUNC3(data);
	FUNC6(data->hwmon_dev);
	return err;
}