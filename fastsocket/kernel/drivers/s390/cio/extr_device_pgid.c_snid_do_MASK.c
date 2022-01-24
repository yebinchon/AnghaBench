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
struct TYPE_8__ {int /*<<< orphan*/  pam; } ;
struct TYPE_7__ {TYPE_4__ pmcw; } ;
struct subchannel {TYPE_3__ schib; } ;
struct ccw_request {int /*<<< orphan*/  lpm; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_2__* private; TYPE_1__ dev; } ;
struct TYPE_6__ {scalar_t__ pgid_valid_mask; struct ccw_request req; } ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 struct subchannel* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ccw_device *cdev)
{
	struct subchannel *sch = FUNC4(cdev->dev.parent);
	struct ccw_request *req = &cdev->private->req;

	/* Adjust lpm if paths are not set in pam. */
	req->lpm = FUNC1(req->lpm, sch->schib.pmcw.pam);
	if (!req->lpm)
		goto out_nopath;
	FUNC2(cdev);
	FUNC0(cdev);
	return;

out_nopath:
	FUNC3(cdev, cdev->private->pgid_valid_mask ? 0 : -EACCES);
}