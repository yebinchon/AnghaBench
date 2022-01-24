#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dasd_device {TYPE_2__* cdev; TYPE_1__* discipline; } ;
struct dasd_ccw_req {int status; int /*<<< orphan*/  stopclk; struct dasd_device* startdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int (* term_IO ) (struct dasd_ccw_req*) ;} ;

/* Variables and functions */
 int DASD_CQR_CLEARED ; 
#define  DASD_CQR_IN_IO 129 
#define  DASD_CQR_QUEUED 128 
 int /*<<< orphan*/  FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct dasd_ccw_req*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC6 (struct dasd_ccw_req*) ; 

int FUNC7(struct dasd_ccw_req *cqr)
{
	struct dasd_device *device = cqr->startdev;
	unsigned long flags;
	int rc;

	rc = 0;
	FUNC4(FUNC2(device->cdev), flags);
	switch (cqr->status) {
	case DASD_CQR_QUEUED:
		/* request was not started - just set to cleared */
		cqr->status = DASD_CQR_CLEARED;
		break;
	case DASD_CQR_IN_IO:
		/* request in IO - terminate IO and release again */
		rc = device->discipline->term_IO(cqr);
		if (rc) {
			FUNC1(&device->cdev->dev,
				"Cancelling request %p failed with rc=%d\n",
				cqr, rc);
		} else {
			cqr->stopclk = FUNC3();
		}
		break;
	default: /* already finished or clear pending - do nothing */
		break;
	}
	FUNC5(FUNC2(device->cdev), flags);
	FUNC0(device);
	return rc;
}