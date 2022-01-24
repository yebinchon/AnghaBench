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
struct ccw_device {int /*<<< orphan*/  ccwlock; TYPE_1__* private; } ;
struct ccw_dev_id {int /*<<< orphan*/  devno; int /*<<< orphan*/  ssid; } ;
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  onoff; struct ccw_dev_id dev_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDEV_TODO_UNREG ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ DEV_STATE_OFFLINE ; 
 int EINTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct ccw_device* FUNC8 (struct device*) ; 

__attribute__((used)) static int FUNC9(struct device *dev, void *data)
{
	struct ccw_device *cdev = FUNC8(dev);
	struct ccw_dev_id *id = &cdev->private->dev_id;

	FUNC6(cdev->ccwlock);
	if (FUNC4(id->ssid, id->devno) &&
	    (cdev->private->state == DEV_STATE_OFFLINE) &&
	    (FUNC1(&cdev->private->onoff, 0, 1) == 0)) {
		FUNC0(3, "ccw: purging 0.%x.%04x\n", id->ssid,
			      id->devno);
		FUNC3(cdev, CDEV_TODO_UNREG);
		FUNC2(&cdev->private->onoff, 0);
	}
	FUNC7(cdev->ccwlock);
	/* Abort loop in case of pending signal. */
	if (FUNC5(current))
		return -EINTR;

	return 0;
}