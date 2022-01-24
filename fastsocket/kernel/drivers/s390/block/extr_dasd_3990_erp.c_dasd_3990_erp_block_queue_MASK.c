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
struct dasd_device {int /*<<< orphan*/  cdev; } ;
struct dasd_ccw_req {scalar_t__ block; int /*<<< orphan*/  status; struct dasd_device* startdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_FILLED ; 
 int /*<<< orphan*/  DASD_STOPPED_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,int) ; 
 int /*<<< orphan*/  DBF_INFO ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct dasd_ccw_req *erp, int expires)
{

	struct dasd_device *device = erp->startdev;
	unsigned long flags;

	FUNC0(DBF_INFO, device,
		    "blocking request queue for %is", expires/HZ);

	FUNC5(FUNC4(device->cdev), flags);
	FUNC2(device, DASD_STOPPED_PENDING);
	FUNC6(FUNC4(device->cdev), flags);
	erp->status = DASD_CQR_FILLED;
	if (erp->block)
		FUNC1(erp->block, expires);
	else
		FUNC3(device, expires);
}