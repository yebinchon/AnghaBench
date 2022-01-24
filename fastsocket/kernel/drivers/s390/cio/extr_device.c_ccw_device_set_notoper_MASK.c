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
struct subchannel {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_2__* private; TYPE_1__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  DEV_STATE_NOT_OPER ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct subchannel*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 struct subchannel* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct ccw_device *cdev)
{
	struct subchannel *sch = FUNC4(cdev->dev.parent);

	FUNC0(2, "notoper");
	FUNC0(2, FUNC3(&sch->dev));
	FUNC1(cdev, 0);
	FUNC2(sch);
	cdev->private->state = DEV_STATE_NOT_OPER;
}