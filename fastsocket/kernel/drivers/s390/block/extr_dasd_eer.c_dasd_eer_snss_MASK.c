#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dasd_device {int /*<<< orphan*/  ccw_queue; int /*<<< orphan*/  flags; struct dasd_ccw_req* eer_cqr; } ;
struct dasd_ccw_req {int /*<<< orphan*/  devlist; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_QUEUED ; 
 int /*<<< orphan*/  DASD_FLAG_EER_IN_USE ; 
 int /*<<< orphan*/  DASD_FLAG_EER_SNSS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct dasd_device *device)
{
	struct dasd_ccw_req *cqr;

	cqr = device->eer_cqr;
	if (!cqr)	/* Device not eer enabled. */
		return;
	if (FUNC4(DASD_FLAG_EER_IN_USE, &device->flags)) {
		/* Sense subsystem status request in use. */
		FUNC3(DASD_FLAG_EER_SNSS, &device->flags);
		return;
	}
	/* cdev is already locked, can't use dasd_add_request_head */
	FUNC0(DASD_FLAG_EER_SNSS, &device->flags);
	cqr->status = DASD_CQR_QUEUED;
	FUNC2(&cqr->devlist, &device->ccw_queue);
	FUNC1(device);
}