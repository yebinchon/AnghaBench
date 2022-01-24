#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ssid; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {TYPE_1__ pmcw; } ;
struct subchannel {int /*<<< orphan*/  lock; TYPE_4__ schid; TYPE_2__ schib; } ;
struct TYPE_7__ {int /*<<< orphan*/  ssid; int /*<<< orphan*/  devno; } ;
struct ccw_device_private {int /*<<< orphan*/  timer; int /*<<< orphan*/  wait_q; int /*<<< orphan*/  cmb_list; int /*<<< orphan*/  state; TYPE_4__ schid; TYPE_3__ dev_id; } ;
struct ccw_device {struct ccw_device_private* private; int /*<<< orphan*/  ccwlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_STATE_NOT_OPER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ccw_device_init_count ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct subchannel*,struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ccw_device *cdev, struct subchannel *sch)
{
	struct ccw_device_private *priv;

	cdev->ccwlock = sch->lock;

	/* Init private data. */
	priv = cdev->private;
	priv->dev_id.devno = sch->schib.pmcw.dev;
	priv->dev_id.ssid = sch->schid.ssid;
	priv->schid = sch->schid;
	priv->state = DEV_STATE_NOT_OPER;
	FUNC0(&priv->cmb_list);
	FUNC4(&priv->wait_q);
	FUNC3(&priv->timer);

	/* Increase counter of devices currently in recognition. */
	FUNC1(&ccw_device_init_count);

	/* Start async. device sensing. */
	FUNC6(sch->lock);
	FUNC5(sch, cdev);
	FUNC2(cdev);
	FUNC7(sch->lock);
}