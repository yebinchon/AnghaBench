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
struct dasd_device {int /*<<< orphan*/  cdev; int /*<<< orphan*/  ccw_queue; } ;
struct dasd_ccw_req {int /*<<< orphan*/  devlist; int /*<<< orphan*/  status; struct dasd_device* startdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC5(struct dasd_ccw_req *cqr)
{
	struct dasd_device *device;
	unsigned long flags;

	device = cqr->startdev;
	FUNC3(FUNC1(device->cdev), flags);
	cqr->status = DASD_CQR_QUEUED;
	FUNC2(&cqr->devlist, &device->ccw_queue);
	/* let the bh start the request to keep them in order */
	FUNC0(device);
	FUNC4(FUNC1(device->cdev), flags);
}