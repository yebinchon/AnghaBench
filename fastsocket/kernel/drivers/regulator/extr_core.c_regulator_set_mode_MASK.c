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
struct regulator {struct regulator_dev* rdev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_mode ) (struct regulator_dev*,unsigned int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct regulator_dev*,unsigned int) ; 
 int FUNC3 (struct regulator_dev*,unsigned int) ; 

int FUNC4(struct regulator *regulator, unsigned int mode)
{
	struct regulator_dev *rdev = regulator->rdev;
	int ret;

	FUNC0(&rdev->mutex);

	/* sanity check */
	if (!rdev->desc->ops->set_mode) {
		ret = -EINVAL;
		goto out;
	}

	/* constraints check */
	ret = FUNC2(rdev, mode);
	if (ret < 0)
		goto out;

	ret = rdev->desc->ops->set_mode(rdev, mode);
out:
	FUNC1(&rdev->mutex);
	return ret;
}