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
struct dasd_ccw_req {struct dasd_device* startdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_EER_STATECHANGE ; 
 int /*<<< orphan*/  DASD_FLAG_EER_IN_USE ; 
 int /*<<< orphan*/  DASD_FLAG_EER_SNSS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*,struct dasd_ccw_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_ccw_req*,struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct dasd_ccw_req *cqr, void *data)
{
	struct dasd_device *device = cqr->startdev;
	unsigned long flags;

	FUNC2(device, cqr, DASD_EER_STATECHANGE);
	FUNC5(FUNC4(device->cdev), flags);
	if (device->eer_cqr == cqr) {
		FUNC0(DASD_FLAG_EER_IN_USE, &device->flags);
		if (FUNC7(DASD_FLAG_EER_SNSS, &device->flags))
			/* Another SNSS has been requested in the meantime. */
			FUNC1(device);
		cqr = NULL;
	}
	FUNC6(FUNC4(device->cdev), flags);
	if (cqr)
		/*
		 * Extended error recovery has been switched off while
		 * the SNSS request was running. It could even have
		 * been switched off and on again in which case there
		 * is a new ccw in device->eer_cqr. Free the "old"
		 * snss request now.
		 */
		FUNC3(cqr, device);
}