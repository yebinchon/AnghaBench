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
struct device {int dummy; } ;
struct ccw_driver {int /*<<< orphan*/  (* remove ) (struct ccw_device*) ;} ;
struct ccw_device {struct ccw_driver* drv; int /*<<< orphan*/  dev; TYPE_2__* private; int /*<<< orphan*/  ccwlock; scalar_t__ online; } ;
struct TYPE_3__ {int /*<<< orphan*/  devno; int /*<<< orphan*/  ssid; } ;
struct TYPE_4__ {TYPE_1__ dev_id; int /*<<< orphan*/  wait_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ccw_device*) ; 
 struct ccw_device* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10 (struct device *dev)
{
	struct ccw_device *cdev = FUNC8(dev);
	struct ccw_driver *cdrv = cdev->drv;
	int ret;

	if (cdrv->remove)
		cdrv->remove(cdev);
	if (cdev->online) {
		cdev->online = 0;
		FUNC5(cdev->ccwlock);
		ret = FUNC1(cdev);
		FUNC6(cdev->ccwlock);
		if (ret == 0)
			FUNC9(cdev->private->wait_q,
				   FUNC3(cdev));
		else
			FUNC0(0, "ccw_device_offline returned %d, "
				      "device 0.%x.%04x\n",
				      ret, cdev->private->dev_id.ssid,
				      cdev->private->dev_id.devno);
		/* Give up reference obtained in ccw_device_set_online(). */
		FUNC4(&cdev->dev);
	}
	FUNC2(cdev, 0);
	cdev->drv = NULL;
	return 0;
}