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
struct TYPE_7__ {int mp; } ;
struct subchannel {int /*<<< orphan*/  vpm; TYPE_3__ config; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_2__* private; TYPE_4__ dev; } ;
struct ccw_dev_id {int /*<<< orphan*/  devno; int /*<<< orphan*/  ssid; } ;
struct TYPE_5__ {int mpath; int pgroup; } ;
struct TYPE_6__ {TYPE_1__ flags; struct ccw_dev_id dev_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,int) ; 
 int FUNC2 (struct subchannel*) ; 
 struct subchannel* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ccw_device *cdev, int rc)
{
	struct subchannel *sch = FUNC3(cdev->dev.parent);
	struct ccw_dev_id *id = &cdev->private->dev_id;
	int mpath = cdev->private->flags.mpath;
	int pgroup = cdev->private->flags.pgroup;

	if (rc)
		goto out;
	/* Ensure consistent multipathing state at device and channel. */
	if (sch->config.mp != mpath) {
		sch->config.mp = mpath;
		rc = FUNC2(sch);
	}
out:
	FUNC0(2, "vrfy: device 0.%x.%04x: rc=%d pgroup=%d mpath=%d "
			 "vpm=%02x\n", id->ssid, id->devno, rc, pgroup, mpath,
			 sch->vpm);
	FUNC1(cdev, rc);
}