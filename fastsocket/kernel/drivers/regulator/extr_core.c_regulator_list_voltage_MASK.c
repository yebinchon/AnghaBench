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
struct regulator_ops {int (* list_voltage ) (struct regulator_dev*,unsigned int) ;} ;
struct regulator_dev {TYPE_1__* constraints; int /*<<< orphan*/  mutex; TYPE_2__* desc; } ;
struct regulator {struct regulator_dev* rdev; } ;
struct TYPE_4__ {unsigned int n_voltages; struct regulator_ops* ops; } ;
struct TYPE_3__ {int min_uV; int max_uV; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct regulator_dev*,unsigned int) ; 

int FUNC3(struct regulator *regulator, unsigned selector)
{
	struct regulator_dev	*rdev = regulator->rdev;
	struct regulator_ops	*ops = rdev->desc->ops;
	int			ret;

	if (!ops->list_voltage || selector >= rdev->desc->n_voltages)
		return -EINVAL;

	FUNC0(&rdev->mutex);
	ret = ops->list_voltage(rdev, selector);
	FUNC1(&rdev->mutex);

	if (ret > 0) {
		if (ret < rdev->constraints->min_uV)
			ret = 0;
		else if (ret > rdev->constraints->max_uV)
			ret = 0;
	}

	return ret;
}