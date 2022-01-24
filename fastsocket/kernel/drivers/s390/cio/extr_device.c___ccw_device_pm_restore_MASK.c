#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct subchannel {int /*<<< orphan*/  lock; int /*<<< orphan*/  schid; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_3__* private; TYPE_1__ dev; } ;
typedef  scalar_t__ addr_t ;
struct TYPE_5__ {int resuming; } ;
struct TYPE_6__ {scalar_t__ state; TYPE_2__ flags; int /*<<< orphan*/  wait_q; int /*<<< orphan*/  path_new_mask; } ;

/* Variables and functions */
 scalar_t__ DEV_STATE_DISCONNECTED ; 
 scalar_t__ DEV_STATE_OFFLINE ; 
 scalar_t__ DEV_STATE_ONLINE ; 
 int /*<<< orphan*/  LPM_ANYPATH ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct subchannel*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct subchannel* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct ccw_device *cdev)
{
	struct subchannel *sch = FUNC8(cdev->dev.parent);

	FUNC6(sch->lock);
	if (FUNC2(sch->schid)) {
		FUNC1(sch, (u32)(addr_t)sch);
		goto out_unlock;
	}
	/*
	 * While we were sleeping, devices may have gone or become
	 * available again. Kick re-detection.
	 */
	cdev->private->flags.resuming = 1;
	cdev->private->path_new_mask = LPM_ANYPATH;
	FUNC4(sch->schid);
	FUNC7(sch->lock);
	FUNC3();

	/* cdev may have been moved to a different subchannel. */
	sch = FUNC8(cdev->dev.parent);
	FUNC6(sch->lock);
	if (cdev->private->state != DEV_STATE_ONLINE &&
	    cdev->private->state != DEV_STATE_OFFLINE)
		goto out_unlock;

	FUNC0(cdev);
	FUNC7(sch->lock);
	FUNC9(cdev->private->wait_q, FUNC5(cdev) ||
		   cdev->private->state == DEV_STATE_DISCONNECTED);
	FUNC6(sch->lock);

out_unlock:
	cdev->private->flags.resuming = 0;
	FUNC7(sch->lock);
}