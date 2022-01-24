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
typedef  scalar_t__ u8 ;
struct TYPE_4__ {scalar_t__ lpum; } ;
struct TYPE_5__ {TYPE_1__ pmcw; int /*<<< orphan*/  scsw; } ;
struct subchannel {TYPE_2__ schib; } ;
struct ccw_device {TYPE_3__* private; } ;
struct TYPE_6__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_EVENT_NOTOPER ; 
 int /*<<< orphan*/  DEV_EVENT_VERIFY ; 
 scalar_t__ DEV_STATE_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*) ; 
 scalar_t__ FUNC1 (struct subchannel*) ; 
 scalar_t__ FUNC2 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 struct ccw_device* FUNC4 (struct subchannel*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct subchannel *sch, u8 mask)
{
	struct ccw_device *cdev;

	cdev = FUNC4(sch);
	if (!cdev)
		return;
	if (FUNC2(sch))
		goto err;
	/* Check for I/O on path. */
	if (FUNC5(&sch->schib.scsw) == 0 || sch->schib.pmcw.lpum != mask)
		goto out;
	if (cdev->private->state == DEV_STATE_ONLINE) {
		FUNC0(cdev);
		goto out;
	}
	if (FUNC1(sch))
		goto err;
out:
	/* Trigger path verification. */
	FUNC3(cdev, DEV_EVENT_VERIFY);
	return;

err:
	FUNC3(cdev, DEV_EVENT_NOTOPER);
}