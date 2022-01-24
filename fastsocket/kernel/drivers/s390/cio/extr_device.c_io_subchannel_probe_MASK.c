#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  sch_no; int /*<<< orphan*/  ssid; } ;
struct TYPE_11__ {int /*<<< orphan*/  kobj; } ;
struct subchannel {int /*<<< orphan*/  lock; TYPE_6__ schid; int /*<<< orphan*/  private; TYPE_5__ dev; } ;
struct io_subchannel_private {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  groups; } ;
struct ccw_device {TYPE_3__ dev; TYPE_2__* private; } ;
struct TYPE_8__ {int initialized; } ;
struct TYPE_9__ {scalar_t__ state; TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ DEV_STATE_BOXED ; 
 scalar_t__ DEV_STATE_NOT_OPER ; 
 scalar_t__ DEV_STATE_OFFLINE ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  SCH_TODO_UNREG ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*) ; 
 int /*<<< orphan*/  ccwdev_attr_groups ; 
 int FUNC2 (struct subchannel*) ; 
 scalar_t__ FUNC3 (TYPE_6__) ; 
 int /*<<< orphan*/  FUNC4 (struct subchannel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  io_subchannel_attr_group ; 
 int /*<<< orphan*/  FUNC9 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 struct ccw_device* FUNC12 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct subchannel *sch)
{
	struct ccw_device *cdev;
	int rc;

	if (FUNC3(sch->schid)) {
		rc = FUNC15(&sch->dev.kobj,
					&io_subchannel_attr_group);
		if (rc)
			FUNC0(0, "Failed to create io subchannel "
				      "attributes for subchannel "
				      "0.%x.%04x (rc=%d)\n",
				      sch->schid.ssid, sch->schid.sch_no, rc);
		/*
		 * The console subchannel already has an associated ccw_device.
		 * Throw the delayed uevent for the subchannel, register
		 * the ccw_device and exit.
		 */
		FUNC6(&sch->dev, 0);
		FUNC10(&sch->dev.kobj, KOBJ_ADD);
		cdev = FUNC12(sch);
		cdev->dev.groups = ccwdev_attr_groups;
		FUNC7(&cdev->dev);
		cdev->private->flags.initialized = 1;
		FUNC1(cdev);
		/*
		 * Check if the device is already online. If it is
		 * the reference count needs to be corrected since we
		 * didn't obtain a reference in ccw_device_set_online.
		 */
		if (cdev->private->state != DEV_STATE_NOT_OPER &&
		    cdev->private->state != DEV_STATE_OFFLINE &&
		    cdev->private->state != DEV_STATE_BOXED)
			FUNC8(&cdev->dev);
		return 0;
	}
	FUNC9(sch);
	rc = FUNC2(sch);
	if (rc)
		goto out_schedule;
	rc = FUNC15(&sch->dev.kobj,
				&io_subchannel_attr_group);
	if (rc)
		goto out_schedule;
	/* Allocate I/O subchannel private data. */
	sch->private = FUNC11(sizeof(struct io_subchannel_private),
			       GFP_KERNEL | GFP_DMA);
	if (!sch->private)
		goto out_schedule;
	FUNC5(sch->schid);
	return 0;

out_schedule:
	FUNC13(sch->lock);
	FUNC4(sch, SCH_TODO_UNREG);
	FUNC14(sch->lock);
	return 0;
}