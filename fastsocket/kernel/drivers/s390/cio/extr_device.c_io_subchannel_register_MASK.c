#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  parent; } ;
struct subchannel {int /*<<< orphan*/  lock; TYPE_4__ dev; } ;
struct ccw_device {TYPE_3__* private; TYPE_4__ dev; int /*<<< orphan*/  drv; } ;
struct TYPE_9__ {int recog_done; } ;
struct TYPE_8__ {int ssid; int devno; } ;
struct TYPE_10__ {int /*<<< orphan*/  wait_q; TYPE_2__ flags; TYPE_1__ dev_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ccw_device_init_count ; 
 int /*<<< orphan*/  ccw_device_init_wq ; 
 int FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 int FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (struct subchannel*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned long) ; 
 struct subchannel* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct ccw_device *cdev)
{
	struct subchannel *sch;
	int ret, adjust_init_count = 1;
	unsigned long flags;

	sch = FUNC12(cdev->dev.parent);
	/*
	 * Check if subchannel is still registered. It may have become
	 * unregistered if a machine check hit us after finishing
	 * device recognition but before the register work could be
	 * queued.
	 */
	if (!FUNC5(&sch->dev))
		goto out_err;
	FUNC3(sch);
	/*
	 * io_subchannel_register() will also be called after device
	 * recognition has been done for a boxed device (which will already
	 * be registered). We need to reprobe since we may now have sense id
	 * information.
	 */
	if (FUNC5(&cdev->dev)) {
		if (!cdev->drv) {
			ret = FUNC6(&cdev->dev);
			if (ret)
				/* We can't do much here. */
				FUNC0(0, "device_reprobe() returned"
					      " %d for 0.%x.%04x\n", ret,
					      cdev->private->dev_id.ssid,
					      cdev->private->dev_id.devno);
		}
		adjust_init_count = 0;
		goto out;
	}
	/*
	 * Now we know this subchannel will stay, we can throw
	 * our delayed uevent.
	 */
	FUNC4(&sch->dev, 0);
	FUNC7(&sch->dev.kobj, KOBJ_ADD);
	/* make it known to the system */
	ret = FUNC2(cdev);
	if (ret) {
		FUNC0(0, "Could not register ccw dev 0.%x.%04x: %d\n",
			      cdev->private->dev_id.ssid,
			      cdev->private->dev_id.devno, ret);
		FUNC10(sch->lock, flags);
		FUNC9(sch, NULL);
		FUNC11(sch->lock, flags);
		/* Release initial device reference. */
		FUNC8(&cdev->dev);
		goto out_err;
	}
out:
	cdev->private->flags.recog_done = 1;
	FUNC13(&cdev->private->wait_q);
out_err:
	if (adjust_init_count && FUNC1(&ccw_device_init_count))
		FUNC13(&ccw_device_init_wq);
}