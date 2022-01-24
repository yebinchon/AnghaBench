#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct format_data_t {int /*<<< orphan*/  start_unit; int /*<<< orphan*/  stop_unit; int /*<<< orphan*/  blksize; int /*<<< orphan*/  intensity; } ;
struct dasd_device {scalar_t__ state; TYPE_3__* cdev; TYPE_2__* discipline; } ;
struct dasd_ccw_req {int /*<<< orphan*/  memdev; } ;
struct dasd_block {int /*<<< orphan*/  gdp; struct dasd_device* base; } ;
struct block_device {TYPE_1__* bd_inode; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {struct dasd_ccw_req* (* format_device ) (struct dasd_device*,struct format_data_t*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  i_blkbits; } ;

/* Variables and functions */
 scalar_t__ DASD_STATE_BASIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBF_NOTICE ; 
 int EBUSY ; 
 int EPERM ; 
 int ERESTARTSYS ; 
 scalar_t__ FUNC1 (struct dasd_ccw_req*) ; 
 int FUNC2 (struct dasd_ccw_req*) ; 
 struct block_device* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dasd_ccw_req*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 struct dasd_ccw_req* FUNC11 (struct dasd_device*,struct format_data_t*) ; 

__attribute__((used)) static int FUNC12(struct dasd_block *block, struct format_data_t *fdata)
{
	struct dasd_ccw_req *cqr;
	struct dasd_device *base;
	int rc;

	base = block->base;
	if (base->discipline->format_device == NULL)
		return -EPERM;

	if (base->state != DASD_STATE_BASIC) {
		FUNC10("%s: The DASD cannot be formatted while it is "
			   "enabled\n",  FUNC8(&base->cdev->dev));
		return -EBUSY;
	}

	FUNC0(DBF_NOTICE, base,
		      "formatting units %u to %u (%u B blocks) flags %u",
		      fdata->start_unit,
		      fdata->stop_unit, fdata->blksize, fdata->intensity);

	/* Since dasdfmt keeps the device open after it was disabled,
	 * there still exists an inode for this device.
	 * We must update i_blkbits, otherwise we might get errors when
	 * enabling the device later.
	 */
	if (fdata->start_unit == 0) {
		struct block_device *bdev = FUNC3(block->gdp, 0);
		bdev->bd_inode->i_blkbits = FUNC5(fdata->blksize);
		FUNC4(bdev);
	}

	while (fdata->start_unit <= fdata->stop_unit) {
		cqr = base->discipline->format_device(base, fdata);
		if (FUNC1(cqr))
			return FUNC2(cqr);
		rc = FUNC7(cqr);
		FUNC6(cqr, cqr->memdev);
		if (rc) {
			if (rc != -ERESTARTSYS)
				FUNC9("%s: Formatting unit %d failed with "
				       "rc=%d\n", FUNC8(&base->cdev->dev),
				       fdata->start_unit, rc);
			return rc;
		}
		fdata->start_unit++;
	}
	return 0;
}