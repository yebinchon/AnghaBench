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
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct subchannel {TYPE_1__ dev; int /*<<< orphan*/  private; } ;
struct ccw_device {int /*<<< orphan*/  ccwlock; TYPE_2__* private; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_STATE_NOT_OPER ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*) ; 
 int /*<<< orphan*/  io_subchannel_attr_group ; 
 int /*<<< orphan*/  FUNC1 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ccw_device* FUNC3 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC4 (struct subchannel*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8 (struct subchannel *sch)
{
	struct ccw_device *cdev;
	unsigned long flags;

	cdev = FUNC3(sch);
	if (!cdev)
		goto out_free;
	FUNC1(sch);
	/* Set ccw device to not operational and drop reference. */
	FUNC5(cdev->ccwlock, flags);
	FUNC4(sch, NULL);
	cdev->private->state = DEV_STATE_NOT_OPER;
	FUNC6(cdev->ccwlock, flags);
	FUNC0(cdev);
out_free:
	FUNC2(sch->private);
	FUNC7(&sch->dev.kobj, &io_subchannel_attr_group);
	return 0;
}