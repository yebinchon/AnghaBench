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
struct TYPE_7__ {int /*<<< orphan*/  pam; } ;
struct TYPE_8__ {TYPE_2__ pmcw; } ;
struct subchannel {TYPE_3__ schib; int /*<<< orphan*/  lpm; scalar_t__ vpm; } ;
struct ccw_request {int lpm; int singlepath; int /*<<< orphan*/  callback; int /*<<< orphan*/  filter; int /*<<< orphan*/  maxretries; int /*<<< orphan*/  timeout; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_5__* private; TYPE_1__ dev; } ;
struct ccw_dev_id {int dummy; } ;
struct TYPE_9__ {scalar_t__ pgroup; } ;
struct TYPE_10__ {TYPE_4__ flags; struct ccw_dev_id dev_id; struct ccw_request req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct ccw_dev_id*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  PGID_RETRIES ; 
 int /*<<< orphan*/  PGID_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nop_callback ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*) ; 
 int /*<<< orphan*/  nop_filter ; 
 int /*<<< orphan*/  snid_callback ; 
 int /*<<< orphan*/  FUNC4 (struct ccw_device*) ; 
 struct subchannel* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ccw_device *cdev)
{
	struct subchannel *sch = FUNC5(cdev->dev.parent);
	struct ccw_request *req = &cdev->private->req;
	struct ccw_dev_id *devid = &cdev->private->dev_id;

	sch->vpm = 0;
	sch->lpm = sch->schib.pmcw.pam;
	/* Initialize request data. */
	FUNC2(req, 0, sizeof(*req));
	req->timeout	= PGID_TIMEOUT;
	req->maxretries	= PGID_RETRIES;
	req->lpm	= 0x80;
	req->singlepath	= 1;
	if (cdev->private->flags.pgroup) {
		FUNC1(4, "snid");
		FUNC0(4, devid, sizeof(*devid));
		req->callback	= snid_callback;
		FUNC4(cdev);
	} else {
		FUNC1(4, "nop");
		FUNC0(4, devid, sizeof(*devid));
		req->filter	= nop_filter;
		req->callback	= nop_callback;
		FUNC3(cdev);
	}
}