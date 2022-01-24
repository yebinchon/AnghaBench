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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ccw_device {TYPE_2__* private; TYPE_1__* drv; } ;
typedef  int ssize_t ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/  onoff; int /*<<< orphan*/  todo_work; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 scalar_t__ DEV_STATE_DISCONNECTED ; 
 int EAGAIN ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ccw_device*) ; 
 int FUNC5 (struct ccw_device*,int) ; 
 int FUNC6 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*,size_t) ; 
 struct ccw_device* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC11 (struct device *dev, struct device_attribute *attr,
			     const char *buf, size_t count)
{
	struct ccw_device *cdev = FUNC8(dev);
	int force, ret;
	unsigned long i;

	/* Prevent conflict between multiple on-/offline processing requests. */
	if (FUNC0(&cdev->private->onoff, 0, 1) != 0)
		return -EAGAIN;
	/* Prevent conflict between internal I/Os and on-/offline processing. */
	if (!FUNC2(cdev) &&
	    cdev->private->state != DEV_STATE_DISCONNECTED) {
		ret = -EAGAIN;
		goto out_onoff;
	}
	/* Prevent conflict between pending work and on-/offline processing.*/
	if (FUNC10(&cdev->private->todo_work)) {
		ret = -EAGAIN;
		goto out_onoff;
	}

	if (cdev->drv && !FUNC9(cdev->drv->owner)) {
		ret = -EINVAL;
		goto out_onoff;
	}
	if (!FUNC7(buf, "force\n", count)) {
		force = 1;
		i = 1;
		ret = 0;
	} else {
		force = 0;
		ret = FUNC6(buf, 16, &i);
	}
	if (ret)
		goto out;
	switch (i) {
	case 0:
		ret = FUNC4(cdev);
		break;
	case 1:
		ret = FUNC5(cdev, force);
		break;
	default:
		ret = -EINVAL;
	}
out:
	if (cdev->drv)
		FUNC3(cdev->drv->owner);
out_onoff:
	FUNC1(&cdev->private->onoff, 0);
	return (ret < 0) ? ret : count;
}