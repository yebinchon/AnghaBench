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
struct TYPE_8__ {int /*<<< orphan*/  sch_no; } ;
struct subchannel {TYPE_3__ schid; } ;
struct irb {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_5__* private; int /*<<< orphan*/  online; TYPE_1__ dev; } ;
struct TYPE_9__ {scalar_t__ donotify; } ;
struct TYPE_7__ {int /*<<< orphan*/  devno; } ;
struct TYPE_10__ {int state; int /*<<< orphan*/  wait_q; TYPE_4__ flags; TYPE_2__ dev_id; int /*<<< orphan*/  irb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDEV_TODO_UNREG ; 
 int /*<<< orphan*/  CIO_BOXED ; 
 int /*<<< orphan*/  CIO_GONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CIO_NO_PATH ; 
#define  DEV_STATE_BOXED 130 
#define  DEV_STATE_DISCONNECTED 129 
#define  DEV_STATE_NOT_OPER 128 
 int DEV_STATE_ONLINE ; 
 int /*<<< orphan*/  NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct subchannel* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct ccw_device *cdev, int state)
{
	struct subchannel *sch;

	sch = FUNC8(cdev->dev.parent);

	FUNC5(cdev, 0);

	if (state != DEV_STATE_ONLINE)
		FUNC6(sch);

	/* Reset device status. */
	FUNC7(&cdev->private->irb, 0, sizeof(struct irb));

	cdev->private->state = state;

	switch (state) {
	case DEV_STATE_BOXED:
		FUNC0(0, "Boxed device %04x on subchannel %04x\n",
			      cdev->private->dev_id.devno, sch->schid.sch_no);
		if (cdev->online &&
		    FUNC1(cdev, CIO_BOXED) != NOTIFY_OK)
			FUNC3(cdev, CDEV_TODO_UNREG);
		cdev->private->flags.donotify = 0;
		break;
	case DEV_STATE_NOT_OPER:
		FUNC0(0, "Device %04x gone on subchannel %04x\n",
			      cdev->private->dev_id.devno, sch->schid.sch_no);
		if (FUNC1(cdev, CIO_GONE) != NOTIFY_OK)
			FUNC3(cdev, CDEV_TODO_UNREG);
		else
			FUNC4(cdev);
		cdev->private->flags.donotify = 0;
		break;
	case DEV_STATE_DISCONNECTED:
		FUNC0(0, "Disconnected device %04x on subchannel "
			      "%04x\n", cdev->private->dev_id.devno,
			      sch->schid.sch_no);
		if (FUNC1(cdev, CIO_NO_PATH) != NOTIFY_OK)
			FUNC3(cdev, CDEV_TODO_UNREG);
		else
			FUNC4(cdev);
		cdev->private->flags.donotify = 0;
		break;
	default:
		break;
	}

	if (cdev->private->flags.donotify) {
		cdev->private->flags.donotify = 0;
		FUNC2(cdev);
	}
	FUNC9(&cdev->private->wait_q);
}