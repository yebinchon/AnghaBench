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
struct ccwgroup_driver {int (* prepare ) (struct ccwgroup_device*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;
struct ccwgroup_device {scalar_t__ state; TYPE_1__ dev; int /*<<< orphan*/  onoff; } ;

/* Variables and functions */
 scalar_t__ CCWGROUP_ONLINE ; 
 int EAGAIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ccwgroup_device*) ; 
 struct ccwgroup_device* FUNC2 (struct device*) ; 
 struct ccwgroup_driver* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct ccwgroup_device *gdev = FUNC2(dev);
	struct ccwgroup_driver *gdrv = FUNC3(gdev->dev.driver);

	/* Fail while device is being set online/offline. */
	if (FUNC0(&gdev->onoff))
		return -EAGAIN;

	if (!gdev->dev.driver || gdev->state != CCWGROUP_ONLINE)
		return 0;

	return gdrv->prepare ? gdrv->prepare(gdev) : 0;
}