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
struct v4l2_device {int /*<<< orphan*/ * name; struct device* dev; int /*<<< orphan*/  ioctl_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  subdevs; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 char* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_device*,char*) ; 

int FUNC9(struct device *dev, struct v4l2_device *v4l2_dev)
{
	if (v4l2_dev == NULL)
		return -EINVAL;

	FUNC0(&v4l2_dev->subdevs);
	FUNC7(&v4l2_dev->lock);
	FUNC5(&v4l2_dev->ioctl_lock);
	v4l2_dev->dev = dev;
	if (dev == NULL) {
		/* If dev == NULL, then name must be filled in by the caller */
		FUNC1(!v4l2_dev->name[0]);
		return 0;
	}

	/* Set name to driver name + device name if it is empty. */
	if (!v4l2_dev->name[0])
		FUNC6(v4l2_dev->name, sizeof(v4l2_dev->name), "%s %s",
			dev->driver->name, FUNC3(dev));
	if (FUNC2(dev))
		FUNC8(v4l2_dev, "Non-NULL drvdata on register\n");
	FUNC4(dev, v4l2_dev);
	return 0;
}