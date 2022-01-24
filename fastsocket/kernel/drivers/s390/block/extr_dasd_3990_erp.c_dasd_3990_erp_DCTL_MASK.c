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
struct dasd_ccw_req {int expires; int retries; int /*<<< orphan*/  status; int /*<<< orphan*/  buildclk; scalar_t__ magic; struct dasd_device* memdev; struct dasd_device* startdev; struct dasd_ccw_req* refers; struct dasd_ccw_req* (* function ) (struct dasd_ccw_req*,char) ;int /*<<< orphan*/  flags; struct ccw1* cpaddr; struct DCTL_data* data; } ;
struct ccw1 {int count; scalar_t__ cda; int /*<<< orphan*/  cmd_code; } ;
struct DCTL_data {int subcommand; char modifier; } ;
typedef  scalar_t__ addr_t ;
typedef  scalar_t__ __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_CMD_DCTL ; 
 int /*<<< orphan*/  DASD_CQR_FAILED ; 
 int /*<<< orphan*/  DASD_CQR_FILLED ; 
 int HZ ; 
 scalar_t__ FUNC0 (struct dasd_ccw_req*) ; 
 struct dasd_ccw_req* FUNC1 (char*,int,int,struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ccw1*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct dasd_ccw_req *
FUNC5(struct dasd_ccw_req * erp, char modifier)
{

	struct dasd_device *device = erp->startdev;
	struct DCTL_data *DCTL_data;
	struct ccw1 *ccw;
	struct dasd_ccw_req *dctl_cqr;

	dctl_cqr = FUNC1((char *) &erp->magic, 1,
					  sizeof(struct DCTL_data),
					  device);
	if (FUNC0(dctl_cqr)) {
		FUNC2(&device->cdev->dev,
			    "Unable to allocate DCTL-CQR\n");
		erp->status = DASD_CQR_FAILED;
		return erp;
	}

	DCTL_data = dctl_cqr->data;

	DCTL_data->subcommand = 0x02;	/* Inhibit Write */
	DCTL_data->modifier = modifier;

	ccw = dctl_cqr->cpaddr;
	FUNC4(ccw, 0, sizeof(struct ccw1));
	ccw->cmd_code = CCW_CMD_DCTL;
	ccw->count = 4;
	ccw->cda = (__u32)(addr_t) DCTL_data;
	dctl_cqr->flags = erp->flags;
	dctl_cqr->function = dasd_3990_erp_DCTL;
	dctl_cqr->refers = erp;
	dctl_cqr->startdev = device;
	dctl_cqr->memdev = device;
	dctl_cqr->magic = erp->magic;
	dctl_cqr->expires = 5 * 60 * HZ;
	dctl_cqr->retries = 2;

	dctl_cqr->buildclk = FUNC3();

	dctl_cqr->status = DASD_CQR_FILLED;

	return dctl_cqr;

}