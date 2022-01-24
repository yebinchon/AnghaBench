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
struct dasd_device {int /*<<< orphan*/  flags; } ;
struct dasd_ccw_req {int count; int retries; int expires; struct dasd_device* memdev; int /*<<< orphan*/  status; int /*<<< orphan*/  buildclk; int /*<<< orphan*/  flags; struct dasd_device* startdev; int /*<<< orphan*/ * data; scalar_t__ cda; int /*<<< orphan*/  cmd_code; struct dasd_ccw_req* cpaddr; int /*<<< orphan*/  magic; } ;
struct ccw1 {int count; int retries; int expires; struct dasd_device* memdev; int /*<<< orphan*/  status; int /*<<< orphan*/  buildclk; int /*<<< orphan*/  flags; struct dasd_device* startdev; int /*<<< orphan*/ * data; scalar_t__ cda; int /*<<< orphan*/  cmd_code; struct ccw1* cpaddr; int /*<<< orphan*/  magic; } ;
typedef  scalar_t__ addr_t ;
typedef  scalar_t__ __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  data; struct dasd_ccw_req ccw; struct dasd_ccw_req cqr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  CCW_FLAG_SLI ; 
 int /*<<< orphan*/  DASD_CQR_FILLED ; 
 int /*<<< orphan*/  DASD_CQR_FLAGS_FAILFAST ; 
 int /*<<< orphan*/  DASD_CQR_FLAGS_USE_ERP ; 
 int /*<<< orphan*/  DASD_ECKD_CCW_RELEASE ; 
 int /*<<< orphan*/  DASD_ECKD_MAGIC ; 
 int /*<<< orphan*/  DASD_FLAG_IS_RESERVED ; 
 int EACCES ; 
 int HZ ; 
 scalar_t__ FUNC0 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dasd_reserve_mutex ; 
 TYPE_1__* dasd_reserve_req ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_ccw_req*,struct dasd_device*) ; 
 int FUNC4 (struct dasd_ccw_req*) ; 
 struct dasd_ccw_req* FUNC5 (int /*<<< orphan*/ ,int,int,struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct dasd_ccw_req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct dasd_device *device)
{
	struct dasd_ccw_req *cqr;
	int rc;
	struct ccw1 *ccw;
	int useglobal;

	if (!FUNC1(CAP_SYS_ADMIN))
		return -EACCES;

	useglobal = 0;
	cqr = FUNC5(DASD_ECKD_MAGIC, 1, 32, device);
	if (FUNC0(cqr)) {
		FUNC8(&dasd_reserve_mutex);
		useglobal = 1;
		cqr = &dasd_reserve_req->cqr;
		FUNC7(cqr, 0, sizeof(*cqr));
		FUNC7(&dasd_reserve_req->ccw, 0,
		       sizeof(dasd_reserve_req->ccw));
		cqr->cpaddr = &dasd_reserve_req->ccw;
		cqr->data = &dasd_reserve_req->data;
		cqr->magic = DASD_ECKD_MAGIC;
	}
	ccw = cqr->cpaddr;
	ccw->cmd_code = DASD_ECKD_CCW_RELEASE;
	ccw->flags |= CCW_FLAG_SLI;
	ccw->count = 32;
	ccw->cda = (__u32)(addr_t) cqr->data;
	cqr->startdev = device;
	cqr->memdev = device;
	FUNC2(DASD_CQR_FLAGS_USE_ERP, &cqr->flags);
	FUNC10(DASD_CQR_FLAGS_FAILFAST, &cqr->flags);
	cqr->retries = 2;	/* set retry counter to enable basic ERP */
	cqr->expires = 2 * HZ;
	cqr->buildclk = FUNC6();
	cqr->status = DASD_CQR_FILLED;

	rc = FUNC4(cqr);
	if (!rc)
		FUNC2(DASD_FLAG_IS_RESERVED, &device->flags);

	if (useglobal)
		FUNC9(&dasd_reserve_mutex);
	else
		FUNC3(cqr, cqr->memdev);
	return rc;
}