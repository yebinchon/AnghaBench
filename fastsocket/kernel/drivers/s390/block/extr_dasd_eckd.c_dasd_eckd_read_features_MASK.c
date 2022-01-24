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
struct dasd_rssd_features {int suborder; int /*<<< orphan*/  order; } ;
struct dasd_psf_prssd_data {int suborder; int /*<<< orphan*/  order; } ;
struct dasd_eckd_private {struct dasd_rssd_features features; } ;
struct dasd_device {TYPE_1__* cdev; scalar_t__ private; } ;
struct dasd_ccw_req {int retries; int expires; struct dasd_device* memdev; scalar_t__ data; int /*<<< orphan*/  status; int /*<<< orphan*/  buildclk; struct ccw1* cpaddr; int /*<<< orphan*/ * block; struct dasd_device* startdev; } ;
struct ccw1 {int count; void* cda; int /*<<< orphan*/  cmd_code; int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ addr_t ;
typedef  void* __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_FLAG_CC ; 
 int /*<<< orphan*/  DASD_CQR_FILLED ; 
 int /*<<< orphan*/  DASD_ECKD_CCW_PSF ; 
 int /*<<< orphan*/  DASD_ECKD_CCW_RSSD ; 
 int /*<<< orphan*/  DASD_ECKD_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int HZ ; 
 scalar_t__ FUNC1 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  PSF_ORDER_PRSSD ; 
 int FUNC2 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_ccw_req*,struct dasd_device*) ; 
 int FUNC4 (struct dasd_ccw_req*) ; 
 struct dasd_ccw_req* FUNC5 (int /*<<< orphan*/ ,int,int,struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct dasd_rssd_features*,struct dasd_rssd_features*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dasd_rssd_features*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct dasd_device *device)
{
	struct dasd_psf_prssd_data *prssdp;
	struct dasd_rssd_features *features;
	struct dasd_ccw_req *cqr;
	struct ccw1 *ccw;
	int rc;
	struct dasd_eckd_private *private;

	private = (struct dasd_eckd_private *) device->private;
	FUNC9(&private->features, 0, sizeof(struct dasd_rssd_features));
	cqr = FUNC5(DASD_ECKD_MAGIC, 1 /* PSF */	+ 1 /* RSSD */,
				   (sizeof(struct dasd_psf_prssd_data) +
				    sizeof(struct dasd_rssd_features)),
				   device);
	if (FUNC1(cqr)) {
		FUNC0(DBF_WARNING, device->cdev, "%s", "Could not "
				"allocate initialization request");
		return FUNC2(cqr);
	}
	cqr->startdev = device;
	cqr->memdev = device;
	cqr->block = NULL;
	cqr->retries = 256;
	cqr->expires = 10 * HZ;

	/* Prepare for Read Subsystem Data */
	prssdp = (struct dasd_psf_prssd_data *) cqr->data;
	FUNC9(prssdp, 0, sizeof(struct dasd_psf_prssd_data));
	prssdp->order = PSF_ORDER_PRSSD;
	prssdp->suborder = 0x41;	/* Read Feature Codes */
	/* all other bytes of prssdp must be zero */

	ccw = cqr->cpaddr;
	ccw->cmd_code = DASD_ECKD_CCW_PSF;
	ccw->count = sizeof(struct dasd_psf_prssd_data);
	ccw->flags |= CCW_FLAG_CC;
	ccw->cda = (__u32)(addr_t) prssdp;

	/* Read Subsystem Data - feature codes */
	features = (struct dasd_rssd_features *) (prssdp + 1);
	FUNC9(features, 0, sizeof(struct dasd_rssd_features));

	ccw++;
	ccw->cmd_code = DASD_ECKD_CCW_RSSD;
	ccw->count = sizeof(struct dasd_rssd_features);
	ccw->cda = (__u32)(addr_t) features;

	cqr->buildclk = FUNC7();
	cqr->status = DASD_CQR_FILLED;
	rc = FUNC4(cqr);
	if (rc == 0) {
		prssdp = (struct dasd_psf_prssd_data *) cqr->data;
		features = (struct dasd_rssd_features *) (prssdp + 1);
		FUNC8(&private->features, features,
		       sizeof(struct dasd_rssd_features));
	} else
		FUNC6(&device->cdev->dev, "Reading device feature codes"
			 " failed with rc=%d\n", rc);
	FUNC3(cqr, cqr->memdev);
	return rc;
}