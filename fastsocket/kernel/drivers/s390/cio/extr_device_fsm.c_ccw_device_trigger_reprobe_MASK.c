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
struct TYPE_6__ {int pam; scalar_t__ dev; } ;
struct TYPE_7__ {TYPE_1__ pmcw; } ;
struct subchannel {int lpm; int opm; int /*<<< orphan*/  schid; TYPE_2__ schib; } ;
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_4__* private; TYPE_5__ dev; } ;
struct TYPE_8__ {scalar_t__ devno; } ;
struct TYPE_9__ {scalar_t__ state; TYPE_3__ dev_id; } ;

/* Variables and functions */
 scalar_t__ DEV_STATE_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct subchannel*) ; 
 scalar_t__ FUNC2 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct subchannel*) ; 
 struct subchannel* FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct ccw_device *cdev)
{
	struct subchannel *sch;

	if (cdev->private->state != DEV_STATE_DISCONNECTED)
		return;

	sch = FUNC5(cdev->dev.parent);
	/* Update some values. */
	if (FUNC2(sch))
		return;
	/*
	 * The pim, pam, pom values may not be accurate, but they are the best
	 * we have before performing device selection :/
	 */
	sch->lpm = sch->schib.pmcw.pam & sch->opm;
	/*
	 * Use the initial configuration since we can't be shure that the old
	 * paths are valid.
	 */
	FUNC4(sch);
	if (FUNC1(sch))
		return;

	/* We should also udate ssd info, but this has to wait. */
	/* Check if this is another device which appeared on the same sch. */
	if (sch->schib.pmcw.dev != cdev->private->dev_id.devno)
		FUNC3(sch->schid);
	else
		FUNC0(cdev, 0);
}