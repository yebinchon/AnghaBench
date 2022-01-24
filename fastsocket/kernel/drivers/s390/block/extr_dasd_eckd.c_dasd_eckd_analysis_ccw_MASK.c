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
struct eckd_count {int dummy; } ;
struct dasd_eckd_private {struct eckd_count* count_area; } ;
struct dasd_device {scalar_t__ private; } ;
struct dasd_ccw_req {int retries; int /*<<< orphan*/  status; int /*<<< orphan*/  buildclk; struct dasd_device* memdev; struct dasd_device* startdev; int /*<<< orphan*/ * block; struct LO_eckd_data* data; struct ccw1* cpaddr; } ;
struct ccw1 {int count; void* cda; scalar_t__ flags; void* cmd_code; } ;
struct LO_eckd_data {int dummy; } ;
struct DE_eckd_data {int dummy; } ;
typedef  scalar_t__ addr_t ;
typedef  void* __u32 ;

/* Variables and functions */
 scalar_t__ CCW_FLAG_CC ; 
 int /*<<< orphan*/  DASD_CQR_FILLED ; 
 void* DASD_ECKD_CCW_READ_COUNT ; 
 int /*<<< orphan*/  DASD_ECKD_MAGIC ; 
 scalar_t__ FUNC0 (struct dasd_ccw_req*) ; 
 struct dasd_ccw_req* FUNC1 (int /*<<< orphan*/ ,int,int,struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct LO_eckd_data*,int /*<<< orphan*/ ,int,void*,struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,void*,struct dasd_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dasd_ccw_req *
FUNC5(struct dasd_device *device)
{
	struct dasd_eckd_private *private;
	struct eckd_count *count_data;
	struct LO_eckd_data *LO_data;
	struct dasd_ccw_req *cqr;
	struct ccw1 *ccw;
	int cplength, datasize;
	int i;

	private = (struct dasd_eckd_private *) device->private;

	cplength = 8;
	datasize = sizeof(struct DE_eckd_data) + 2*sizeof(struct LO_eckd_data);
	cqr = FUNC1(DASD_ECKD_MAGIC, cplength, datasize, device);
	if (FUNC0(cqr))
		return cqr;
	ccw = cqr->cpaddr;
	/* Define extent for the first 3 tracks. */
	FUNC2(ccw++, cqr->data, 0, 2,
		      DASD_ECKD_CCW_READ_COUNT, device);
	LO_data = cqr->data + sizeof(struct DE_eckd_data);
	/* Locate record for the first 4 records on track 0. */
	ccw[-1].flags |= CCW_FLAG_CC;
	FUNC4(ccw++, LO_data++, 0, 0, 4,
		      DASD_ECKD_CCW_READ_COUNT, device, 0);

	count_data = private->count_area;
	for (i = 0; i < 4; i++) {
		ccw[-1].flags |= CCW_FLAG_CC;
		ccw->cmd_code = DASD_ECKD_CCW_READ_COUNT;
		ccw->flags = 0;
		ccw->count = 8;
		ccw->cda = (__u32)(addr_t) count_data;
		ccw++;
		count_data++;
	}

	/* Locate record for the first record on track 2. */
	ccw[-1].flags |= CCW_FLAG_CC;
	FUNC4(ccw++, LO_data++, 2, 0, 1,
		      DASD_ECKD_CCW_READ_COUNT, device, 0);
	/* Read count ccw. */
	ccw[-1].flags |= CCW_FLAG_CC;
	ccw->cmd_code = DASD_ECKD_CCW_READ_COUNT;
	ccw->flags = 0;
	ccw->count = 8;
	ccw->cda = (__u32)(addr_t) count_data;

	cqr->block = NULL;
	cqr->startdev = device;
	cqr->memdev = device;
	cqr->retries = 255;
	cqr->buildclk = FUNC3();
	cqr->status = DASD_CQR_FILLED;
	return cqr;
}