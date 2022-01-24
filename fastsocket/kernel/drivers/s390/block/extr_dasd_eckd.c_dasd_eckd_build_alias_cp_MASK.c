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
struct request {int dummy; } ;
struct dasd_eckd_private {scalar_t__ count; } ;
struct dasd_device {int features; int /*<<< orphan*/  cdev; scalar_t__ private; } ;
struct dasd_ccw_req {int dummy; } ;
struct dasd_block {int dummy; } ;

/* Variables and functions */
 scalar_t__ DASD_ECKD_CHANQ_MAX_SIZE ; 
 int DASD_FEATURE_USERAW ; 
 int /*<<< orphan*/  EBUSY ; 
 struct dasd_ccw_req* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dasd_ccw_req*) ; 
 struct dasd_device* FUNC2 (struct dasd_device*) ; 
 struct dasd_ccw_req* FUNC3 (struct dasd_device*,struct dasd_block*,struct request*) ; 
 struct dasd_ccw_req* FUNC4 (struct dasd_device*,struct dasd_block*,struct request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static struct dasd_ccw_req *FUNC8(struct dasd_device *base,
						     struct dasd_block *block,
						     struct request *req)
{
	struct dasd_eckd_private *private;
	struct dasd_device *startdev;
	unsigned long flags;
	struct dasd_ccw_req *cqr;

	startdev = FUNC2(base);
	if (!startdev)
		startdev = base;
	private = (struct dasd_eckd_private *) startdev->private;
	if (private->count >= DASD_ECKD_CHANQ_MAX_SIZE)
		return FUNC0(-EBUSY);

	FUNC6(FUNC5(startdev->cdev), flags);
	private->count++;
	if ((base->features & DASD_FEATURE_USERAW))
		cqr = FUNC4(startdev, block, req);
	else
		cqr = FUNC3(startdev, block, req);
	if (FUNC1(cqr))
		private->count--;
	FUNC7(FUNC5(startdev->cdev), flags);
	return cqr;
}