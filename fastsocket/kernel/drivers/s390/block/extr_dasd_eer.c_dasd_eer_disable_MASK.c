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
struct dasd_device {int /*<<< orphan*/  cdev; int /*<<< orphan*/  flags; struct dasd_ccw_req* eer_cqr; } ;
struct dasd_ccw_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_FLAG_EER_IN_USE ; 
 int /*<<< orphan*/  DASD_FLAG_EER_SNSS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_ccw_req*,struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct dasd_device *device)
{
	struct dasd_ccw_req *cqr;
	unsigned long flags;
	int in_use;

	if (!device->eer_cqr)
		return;
	FUNC3(FUNC2(device->cdev), flags);
	cqr = device->eer_cqr;
	device->eer_cqr = NULL;
	FUNC0(DASD_FLAG_EER_SNSS, &device->flags);
	in_use = FUNC5(DASD_FLAG_EER_IN_USE, &device->flags);
	FUNC4(FUNC2(device->cdev), flags);
	if (cqr && !in_use)
		FUNC1(cqr, device);
}