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
struct TYPE_4__ {int /*<<< orphan*/  ena; } ;
struct TYPE_5__ {TYPE_1__ pmcw; } ;
struct subchannel {int /*<<< orphan*/  lock; TYPE_2__ schib; int /*<<< orphan*/  schid; } ;
struct ccw_device {TYPE_3__* private; int /*<<< orphan*/  (* handler ) (struct ccw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {scalar_t__ state; int iretry; int /*<<< orphan*/  wait_q; int /*<<< orphan*/  intparm; } ;

/* Variables and functions */
 scalar_t__ DEV_STATE_QUIESCE ; 
 int EBUSY ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int FUNC1 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*,int) ; 
 int FUNC3 (struct subchannel*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct ccw_device* FUNC5 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ccw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct subchannel *sch)
{
	struct ccw_device *cdev;
	int ret;

	FUNC6(sch->lock);
	cdev = FUNC5(sch);
	if (FUNC4(sch->schid))
		goto out_unlock;
	if (!sch->schib.pmcw.ena)
		goto out_unlock;
	ret = FUNC3(sch);
	if (ret != -EBUSY)
		goto out_unlock;
	if (cdev->handler)
		cdev->handler(cdev, cdev->private->intparm, FUNC0(-EIO));
	while (ret == -EBUSY) {
		cdev->private->state = DEV_STATE_QUIESCE;
		cdev->private->iretry = 255;
		ret = FUNC1(cdev);
		if (ret == -EBUSY) {
			FUNC2(cdev, HZ/10);
			FUNC7(sch->lock);
			FUNC9(cdev->private->wait_q,
				   cdev->private->state != DEV_STATE_QUIESCE);
			FUNC6(sch->lock);
		}
		ret = FUNC3(sch);
	}
out_unlock:
	FUNC7(sch->lock);
}