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
struct regulator_dev {int /*<<< orphan*/  mutex; TYPE_2__* desc; } ;
struct regulator {int min_uV; int max_uV; struct regulator_dev* rdev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_voltage ) (struct regulator_dev*,int,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  REGULATOR_EVENT_VOLTAGE_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (struct regulator_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct regulator_dev*,int*,int*) ; 
 int FUNC4 (struct regulator_dev*,int,int) ; 

int FUNC5(struct regulator *regulator, int min_uV, int max_uV)
{
	struct regulator_dev *rdev = regulator->rdev;
	int ret;

	FUNC1(&rdev->mutex);

	/* sanity check */
	if (!rdev->desc->ops->set_voltage) {
		ret = -EINVAL;
		goto out;
	}

	/* constraints check */
	ret = FUNC3(rdev, &min_uV, &max_uV);
	if (ret < 0)
		goto out;
	regulator->min_uV = min_uV;
	regulator->max_uV = max_uV;
	ret = rdev->desc->ops->set_voltage(rdev, min_uV, max_uV);

out:
	FUNC0(rdev, REGULATOR_EVENT_VOLTAGE_CHANGE, NULL);
	FUNC2(&rdev->mutex);
	return ret;
}