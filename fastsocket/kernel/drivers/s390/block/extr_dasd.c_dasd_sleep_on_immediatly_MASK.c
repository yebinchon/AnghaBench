#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  next; } ;
struct dasd_device {scalar_t__ block; int /*<<< orphan*/  cdev; TYPE_1__ ccw_queue; int /*<<< orphan*/  flags; } ;
struct dasd_ccw_req {scalar_t__ status; int intrc; int /*<<< orphan*/  devlist; int /*<<< orphan*/  callback_data; int /*<<< orphan*/  callback; int /*<<< orphan*/  flags; struct dasd_device* startdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_ALLOW_SLOCK ; 
 scalar_t__ DASD_CQR_DONE ; 
 scalar_t__ DASD_CQR_FAILED ; 
 scalar_t__ DASD_CQR_QUEUED ; 
 int /*<<< orphan*/  DASD_FLAG_LOCK_STOLEN ; 
 int /*<<< orphan*/  DASD_SLEEPON_START_TAG ; 
 int EIO ; 
 int EPERM ; 
 int FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*) ; 
 int /*<<< orphan*/  dasd_wakeup_cb ; 
 int /*<<< orphan*/  generic_waitq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct dasd_ccw_req *cqr)
{
	struct dasd_device *device;
	int rc;

	device = cqr->startdev;
	if (FUNC8(DASD_FLAG_LOCK_STOLEN, &device->flags) &&
	    !FUNC8(DASD_CQR_ALLOW_SLOCK, &cqr->flags)) {
		cqr->status = DASD_CQR_FAILED;
		cqr->intrc = -EPERM;
		return -EIO;
	}
	FUNC6(FUNC4(device->cdev));
	rc = FUNC0(device);
	if (rc) {
		FUNC7(FUNC4(device->cdev));
		return rc;
	}
	cqr->callback = dasd_wakeup_cb;
	cqr->callback_data = DASD_SLEEPON_START_TAG;
	cqr->status = DASD_CQR_QUEUED;
	/*
	 * add new request as second
	 * first the terminated cqr needs to be finished
	 */
	FUNC5(&cqr->devlist, device->ccw_queue.next);

	/* let the bh start the request to keep them in order */
	FUNC3(device);

	FUNC7(FUNC4(device->cdev));

	FUNC9(generic_waitq, FUNC1(cqr));

	if (cqr->status == DASD_CQR_DONE)
		rc = 0;
	else if (cqr->intrc)
		rc = cqr->intrc;
	else
		rc = -EIO;

	/* kick tasklets */
	FUNC3(device);
	if (device->block)
		FUNC2(device->block);

	return rc;
}