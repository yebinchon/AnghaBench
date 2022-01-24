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
struct dasd_psf_prssd_data {int suborder; int /*<<< orphan*/  order; } ;
struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int retries; int expires; struct dasd_device* memdev; int /*<<< orphan*/  status; int /*<<< orphan*/  buildclk; struct ccw1* cpaddr; scalar_t__ data; int /*<<< orphan*/  flags; struct dasd_device* startdev; } ;
struct ccw1 {int count; void* cda; int /*<<< orphan*/  cmd_code; int /*<<< orphan*/  flags; } ;
struct alias_lcu {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; struct dasd_psf_prssd_data* uac; } ;
typedef  scalar_t__ addr_t ;
typedef  void* __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_FLAG_CC ; 
 int /*<<< orphan*/  DASD_CQR_FILLED ; 
 int /*<<< orphan*/  DASD_CQR_FLAGS_USE_ERP ; 
 int /*<<< orphan*/  DASD_ECKD_CCW_PSF ; 
 int /*<<< orphan*/  DASD_ECKD_CCW_RSSD ; 
 int /*<<< orphan*/  DASD_ECKD_MAGIC ; 
 int HZ ; 
 scalar_t__ FUNC0 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  NEED_UAC_UPDATE ; 
 int /*<<< orphan*/  PSF_ORDER_PRSSD ; 
 int FUNC1 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_ccw_req*,struct dasd_device*) ; 
 struct dasd_ccw_req* FUNC4 (int /*<<< orphan*/ ,int,int,struct dasd_device*) ; 
 int FUNC5 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct dasd_psf_prssd_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct dasd_device *device,
					   struct alias_lcu *lcu)
{
	struct dasd_psf_prssd_data *prssdp;
	struct dasd_ccw_req *cqr;
	struct ccw1 *ccw;
	int rc;
	unsigned long flags;

	cqr = FUNC4(DASD_ECKD_MAGIC, 1 /* PSF */	+ 1 /* RSSD */,
				   (sizeof(struct dasd_psf_prssd_data)),
				   device);
	if (FUNC0(cqr))
		return FUNC1(cqr);
	cqr->startdev = device;
	cqr->memdev = device;
	FUNC2(DASD_CQR_FLAGS_USE_ERP, &cqr->flags);
	cqr->retries = 10;
	cqr->expires = 20 * HZ;

	/* Prepare for Read Subsystem Data */
	prssdp = (struct dasd_psf_prssd_data *) cqr->data;
	FUNC7(prssdp, 0, sizeof(struct dasd_psf_prssd_data));
	prssdp->order = PSF_ORDER_PRSSD;
	prssdp->suborder = 0x0e;	/* Read unit address configuration */
	/* all other bytes of prssdp must be zero */

	ccw = cqr->cpaddr;
	ccw->cmd_code = DASD_ECKD_CCW_PSF;
	ccw->count = sizeof(struct dasd_psf_prssd_data);
	ccw->flags |= CCW_FLAG_CC;
	ccw->cda = (__u32)(addr_t) prssdp;

	/* Read Subsystem Data - feature codes */
	FUNC7(lcu->uac, 0, sizeof(*(lcu->uac)));

	ccw++;
	ccw->cmd_code = DASD_ECKD_CCW_RSSD;
	ccw->count = sizeof(*(lcu->uac));
	ccw->cda = (__u32)(addr_t) lcu->uac;

	cqr->buildclk = FUNC6();
	cqr->status = DASD_CQR_FILLED;

	/* need to unset flag here to detect race with summary unit check */
	FUNC8(&lcu->lock, flags);
	lcu->flags &= ~NEED_UAC_UPDATE;
	FUNC9(&lcu->lock, flags);

	do {
		rc = FUNC5(cqr);
	} while (rc && (cqr->retries > 0));
	if (rc) {
		FUNC8(&lcu->lock, flags);
		lcu->flags |= NEED_UAC_UPDATE;
		FUNC9(&lcu->lock, flags);
	}
	FUNC3(cqr, cqr->memdev);
	return rc;
}