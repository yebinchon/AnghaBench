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
struct ccw_device {TYPE_1__* private; int /*<<< orphan*/  (* handler ) (struct ccw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  enum dev_event { ____Placeholder_dev_event } dev_event ;
struct TYPE_2__ {int iretry; int /*<<< orphan*/  intparm; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_EVENT_NOTOPER ; 
 int /*<<< orphan*/  DEV_STATE_TIMEOUT_KILL ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int HZ ; 
 int FUNC1 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ccw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ccw_device *cdev, enum dev_event dev_event)
{
	int ret;

	FUNC2(cdev, 0);
	cdev->private->iretry = 255;
	ret = FUNC1(cdev);
	if (ret == -EBUSY) {
		FUNC2(cdev, 3*HZ);
		cdev->private->state = DEV_STATE_TIMEOUT_KILL;
		return;
	}
	if (ret)
		FUNC3(cdev, DEV_EVENT_NOTOPER);
	else if (cdev->handler)
		cdev->handler(cdev, cdev->private->intparm,
			      FUNC0(-ETIMEDOUT));
}