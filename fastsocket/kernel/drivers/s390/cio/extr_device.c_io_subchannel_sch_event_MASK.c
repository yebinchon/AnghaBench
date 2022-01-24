#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {TYPE_4__ pmcw; } ;
struct TYPE_8__ {int /*<<< orphan*/  ssid; int /*<<< orphan*/  sch_no; } ;
struct subchannel {int /*<<< orphan*/  lock; TYPE_5__ schib; TYPE_3__ schid; int /*<<< orphan*/  todo_work; int /*<<< orphan*/  dev; } ;
struct ccw_device {int /*<<< orphan*/  dev; TYPE_2__* private; } ;
struct ccw_dev_id {int /*<<< orphan*/  devno; int /*<<< orphan*/  ssid; } ;
typedef  enum io_sch_action { ____Placeholder_io_sch_action } io_sch_action ;
struct TYPE_6__ {int /*<<< orphan*/  resuming; } ;
struct TYPE_7__ {TYPE_1__ flags; int /*<<< orphan*/  state; int /*<<< orphan*/  todo_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  DEV_EVENT_NOTOPER ; 
 int /*<<< orphan*/  DEV_STATE_SENSE_ID ; 
 int EAGAIN ; 
#define  IO_SCH_ATTACH 136 
#define  IO_SCH_DISC 135 
#define  IO_SCH_NOP 134 
#define  IO_SCH_ORPH_ATTACH 133 
#define  IO_SCH_ORPH_UNREG 132 
#define  IO_SCH_REPROBE 131 
#define  IO_SCH_UNREG 130 
#define  IO_SCH_UNREG_ATTACH 129 
#define  IO_SCH_VERIFY 128 
 int FUNC1 (struct ccw_device*) ; 
 int FUNC2 (struct ccw_device*,struct subchannel*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC8 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct ccw_device* FUNC10 (struct ccw_dev_id*) ; 
 int /*<<< orphan*/  FUNC11 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct subchannel*) ; 
 int FUNC14 (struct subchannel*) ; 
 struct ccw_device* FUNC15 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct subchannel *sch, int process)
{
	unsigned long flags;
	struct ccw_device *cdev;
	struct ccw_dev_id dev_id;
	enum io_sch_action action;
	int rc = -EAGAIN;

	FUNC16(sch->lock, flags);
	if (!FUNC9(&sch->dev))
		goto out_unlock;
	if (FUNC18(&sch->todo_work))
		goto out_unlock;
	cdev = FUNC15(sch);
	if (cdev && FUNC18(&cdev->private->todo_work))
		goto out_unlock;
	action = FUNC14(sch);
	FUNC0(2, "event: sch 0.%x.%04x, process=%d, action=%d\n",
		      sch->schid.ssid, sch->schid.sch_no, process,
		      action);
	/* Perform immediate actions while holding the lock. */
	switch (action) {
	case IO_SCH_REPROBE:
		/* Trigger device recognition. */
		FUNC5(cdev);
		rc = 0;
		goto out_unlock;
	case IO_SCH_VERIFY:
		/* Trigger path verification. */
		FUNC11(sch);
		rc = 0;
		goto out_unlock;
	case IO_SCH_DISC:
		FUNC3(cdev);
		rc = 0;
		goto out_unlock;
	case IO_SCH_ORPH_UNREG:
	case IO_SCH_ORPH_ATTACH:
		FUNC3(cdev);
		break;
	case IO_SCH_UNREG_ATTACH:
	case IO_SCH_UNREG:
		if (!cdev)
			break;
		if (cdev->private->state == DEV_STATE_SENSE_ID) {
			/*
			 * Note: delayed work triggered by this event
			 * and repeated calls to sch_event are synchronized
			 * by the above check for work_pending(cdev).
			 */
			FUNC8(cdev, DEV_EVENT_NOTOPER);
		} else
			FUNC4(cdev);
		break;
	case IO_SCH_NOP:
		rc = 0;
		goto out_unlock;
	default:
		break;
	}
	FUNC17(sch->lock, flags);
	/* All other actions require process context. */
	if (!process)
		goto out;
	/* Handle attached ccw device. */
	switch (action) {
	case IO_SCH_ORPH_UNREG:
	case IO_SCH_ORPH_ATTACH:
		/* Move ccw device to orphanage. */
		rc = FUNC1(cdev);
		if (rc)
			goto out;
		break;
	case IO_SCH_UNREG_ATTACH:
		/* Unregister ccw device. */
		if (!cdev->private->flags.resuming)
			FUNC6(cdev);
		break;
	default:
		break;
	}
	/* Handle subchannel. */
	switch (action) {
	case IO_SCH_ORPH_UNREG:
	case IO_SCH_UNREG:
		if (!cdev || !cdev->private->flags.resuming)
			FUNC7(sch);
		break;
	case IO_SCH_ORPH_ATTACH:
	case IO_SCH_UNREG_ATTACH:
	case IO_SCH_ATTACH:
		dev_id.ssid = sch->schid.ssid;
		dev_id.devno = sch->schib.pmcw.dev;
		cdev = FUNC10(&dev_id);
		if (!cdev) {
			FUNC13(sch);
			break;
		}
		rc = FUNC2(cdev, sch);
		if (rc) {
			/* Release reference from get_ccwdev_by_dev_id() */
			FUNC12(&cdev->dev);
			goto out;
		}
		FUNC16(sch->lock, flags);
		FUNC5(cdev);
		FUNC17(sch->lock, flags);
		/* Release reference from get_ccwdev_by_dev_id() */
		FUNC12(&cdev->dev);
		break;
	default:
		break;
	}
	return 0;

out_unlock:
	FUNC17(sch->lock, flags);
out:
	return rc;
}