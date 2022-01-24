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
struct dasd_device {TYPE_1__* cdev; } ;
struct dasd_ccw_req {int expires; int retries; int /*<<< orphan*/  status; int /*<<< orphan*/  buildclk; struct dasd_device* memdev; struct dasd_device* startdev; scalar_t__ data; struct ccw1* cpaddr; } ;
struct ccw1 {int count; scalar_t__ flags; void* cda; int /*<<< orphan*/  cmd_code; } ;
typedef  scalar_t__ addr_t ;
typedef  void* __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_CMD_RDC ; 
 scalar_t__ CCW_FLAG_IDA ; 
 int /*<<< orphan*/  DASD_CQR_FILLED ; 
 int HZ ; 
 scalar_t__ FUNC0 (struct dasd_ccw_req*) ; 
 struct dasd_ccw_req* FUNC1 (int,int,int,struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long* FUNC4 (unsigned long*,void*,int) ; 
 scalar_t__ FUNC5 (void*,int) ; 

__attribute__((used)) static struct dasd_ccw_req *FUNC6(struct dasd_device *device,
						   void *rdc_buffer,
						   int rdc_buffer_size,
						   int magic)
{
	struct dasd_ccw_req *cqr;
	struct ccw1 *ccw;
	unsigned long *idaw;

	cqr = FUNC1(magic, 1 /* RDC */, rdc_buffer_size, device);

	if (FUNC0(cqr)) {
		/* internal error 13 - Allocating the RDC request failed*/
		FUNC2(&device->cdev->dev,
			 "An error occurred in the DASD device driver, "
			 "reason=%s\n", "13");
		return cqr;
	}

	ccw = cqr->cpaddr;
	ccw->cmd_code = CCW_CMD_RDC;
	if (FUNC5(rdc_buffer, rdc_buffer_size)) {
		idaw = (unsigned long *) (cqr->data);
		ccw->cda = (__u32)(addr_t) idaw;
		ccw->flags = CCW_FLAG_IDA;
		idaw = FUNC4(idaw, rdc_buffer, rdc_buffer_size);
	} else {
		ccw->cda = (__u32)(addr_t) rdc_buffer;
		ccw->flags = 0;
	}

	ccw->count = rdc_buffer_size;
	cqr->startdev = device;
	cqr->memdev = device;
	cqr->expires = 10*HZ;
	cqr->retries = 256;
	cqr->buildclk = FUNC3();
	cqr->status = DASD_CQR_FILLED;
	return cqr;
}