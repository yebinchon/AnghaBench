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
struct ccw_device {TYPE_2__* drv; scalar_t__ online; int /*<<< orphan*/  ccwlock; TYPE_1__* private; } ;
struct TYPE_4__ {scalar_t__ set_offline; } ;
struct TYPE_3__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDEV_TODO_UNREG_EVAL ; 
 scalar_t__ DEV_STATE_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ccw_device *cdev)
{
	if (cdev->private->state == DEV_STATE_DISCONNECTED) {
		FUNC2(cdev->ccwlock);
		FUNC0(cdev, CDEV_TODO_UNREG_EVAL);
		FUNC3(cdev->ccwlock);
	} else if (cdev->online && cdev->drv && cdev->drv->set_offline)
		return FUNC1(cdev);
	return 0;
}