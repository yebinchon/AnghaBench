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
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_12__ {int /*<<< orphan*/  ssid; } ;
struct TYPE_8__ {int ena; int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {TYPE_2__ pmcw; } ;
struct subchannel {int /*<<< orphan*/  lock; TYPE_6__ schid; int /*<<< orphan*/  dev; TYPE_3__ schib; int /*<<< orphan*/  reg_mutex; } ;
struct TYPE_11__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {int /*<<< orphan*/  ccwlock; TYPE_4__* private; TYPE_5__ dev; } ;
typedef  scalar_t__ addr_t ;
struct TYPE_7__ {int /*<<< orphan*/  devno; int /*<<< orphan*/  ssid; } ;
struct TYPE_10__ {TYPE_6__ schid; TYPE_1__ dev_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DPM_ORDER_PARENT_BEFORE_DEV ; 
 int EBUSY ; 
 int ENODEV ; 
 int FUNC1 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC2 (struct subchannel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__) ; 
 int /*<<< orphan*/  FUNC4 (struct subchannel*) ; 
 int FUNC5 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC11 (struct subchannel*,struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct subchannel* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct ccw_device *cdev,
				  struct subchannel *sch)
{
	struct subchannel *old_sch;
	int rc, old_enabled = 0;

	old_sch = FUNC14(cdev->dev.parent);
	/* Obtain child reference for new parent. */
	if (!FUNC6(&sch->dev))
		return -ENODEV;

	if (!FUNC10(old_sch)) {
		FUNC12(old_sch->lock);
		old_enabled = old_sch->schib.pmcw.ena;
		rc = 0;
		if (old_enabled)
			rc = FUNC1(old_sch);
		FUNC13(old_sch->lock);
		if (rc == -EBUSY) {
			/* Release child reference for new parent. */
			FUNC9(&sch->dev);
			return rc;
		}
	}

	FUNC7(&sch->reg_mutex);
	rc = FUNC5(&cdev->dev, &sch->dev, DPM_ORDER_PARENT_BEFORE_DEV);
	FUNC8(&sch->reg_mutex);
	if (rc) {
		FUNC0(0, "device_move(0.%x.%04x,0.%x.%04x)=%d\n",
			      cdev->private->dev_id.ssid,
			      cdev->private->dev_id.devno, sch->schid.ssid,
			      sch->schib.pmcw.dev, rc);
		if (old_enabled) {
			/* Try to reenable the old subchannel. */
			FUNC12(old_sch->lock);
			FUNC2(old_sch, (u32)(addr_t)old_sch);
			FUNC13(old_sch->lock);
		}
		/* Release child reference for new parent. */
		FUNC9(&sch->dev);
		return rc;
	}
	/* Clean up old subchannel. */
	if (!FUNC10(old_sch)) {
		FUNC12(old_sch->lock);
		FUNC11(old_sch, NULL);
		FUNC13(old_sch->lock);
		FUNC3(old_sch->schid);
	}
	/* Release child reference for old parent. */
	FUNC9(&old_sch->dev);
	/* Initialize new subchannel. */
	FUNC12(sch->lock);
	cdev->private->schid = sch->schid;
	cdev->ccwlock = sch->lock;
	if (!FUNC10(sch))
		FUNC11(sch, cdev);
	FUNC13(sch->lock);
	if (!FUNC10(sch))
		FUNC4(sch);
	return 0;
}