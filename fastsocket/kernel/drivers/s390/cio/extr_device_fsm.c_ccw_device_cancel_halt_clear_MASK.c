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
struct TYPE_7__ {int /*<<< orphan*/  ena; } ;
struct TYPE_8__ {int /*<<< orphan*/  scsw; TYPE_2__ pmcw; } ;
struct subchannel {TYPE_3__ schib; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_5__* private; TYPE_1__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  devno; int /*<<< orphan*/  ssid; } ;
struct TYPE_10__ {int iretry; TYPE_4__ dev_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int SCSW_ACTL_CLEAR_PEND ; 
 int SCSW_ACTL_HALT_PEND ; 
 int FUNC1 (struct subchannel*) ; 
 int FUNC2 (struct subchannel*) ; 
 int FUNC3 (struct subchannel*) ; 
 scalar_t__ FUNC4 (struct subchannel*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct subchannel* FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct ccw_device *cdev)
{
	struct subchannel *sch;
	int ret;

	sch = FUNC7(cdev->dev.parent);
	if (FUNC4(sch))
		return -ENODEV; 
	if (!sch->schib.pmcw.ena)
		/* Not operational -> done. */
		return 0;
	/* Stage 1: cancel io. */
	if (!(FUNC5(&sch->schib.scsw) & SCSW_ACTL_HALT_PEND) &&
	    !(FUNC5(&sch->schib.scsw) & SCSW_ACTL_CLEAR_PEND)) {
		if (!FUNC6(&sch->schib.scsw)) {
			ret = FUNC1(sch);
			if (ret != -EINVAL)
				return ret;
		}
		/* cancel io unsuccessful or not applicable (transport mode).
		 * Continue with asynchronous instructions. */
		cdev->private->iretry = 3;	/* 3 halt retries. */
	}
	if (!(FUNC5(&sch->schib.scsw) & SCSW_ACTL_CLEAR_PEND)) {
		/* Stage 2: halt io. */
		if (cdev->private->iretry) {
			cdev->private->iretry--;
			ret = FUNC3(sch);
			if (ret != -EBUSY)
				return (ret == 0) ? -EBUSY : ret;
		}
		/* halt io unsuccessful. */
		cdev->private->iretry = 255;	/* 255 clear retries. */
	}
	/* Stage 3: clear io. */
	if (cdev->private->iretry) {
		cdev->private->iretry--;
		ret = FUNC2 (sch);
		return (ret == 0) ? -EBUSY : ret;
	}
	/* Function was unsuccessful */
	FUNC0(0, "0.%x.%04x: could not stop I/O\n",
		      cdev->private->dev_id.ssid, cdev->private->dev_id.devno);
	return -EIO;
}