#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct eckd_count {int kl; int dl; scalar_t__ cyl; scalar_t__ head; int record; } ;
struct TYPE_4__ {unsigned int trk_per_cyl; } ;
struct dasd_eckd_private {int init_cqr_status; int uses_cdl; unsigned int real_cyl; TYPE_2__ rdc_data; struct eckd_count* count_area; } ;
struct dasd_device {int features; TYPE_1__* cdev; scalar_t__ private; } ;
struct dasd_ccw_req {int dummy; } ;
struct dasd_block {unsigned int bp_block; int s2b_shift; unsigned int blocks; struct dasd_device* base; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DASD_FEATURE_USERAW ; 
 unsigned int DASD_RAW_BLOCKSIZE ; 
 unsigned int DASD_RAW_BLOCK_PER_TRACK ; 
 int EIO ; 
 int EMEDIUMTYPE ; 
 int INIT_CQR_ERROR ; 
 int INIT_CQR_UNFORMATTED ; 
 scalar_t__* count_area_head ; 
 int* count_area_rec ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 struct dasd_ccw_req* FUNC1 (struct dasd_device*) ; 
 int FUNC2 (struct dasd_ccw_req*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_ccw_req*,struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int,unsigned int,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 unsigned int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct dasd_block *block)
{
	struct dasd_device *device;
	struct dasd_eckd_private *private;
	struct eckd_count *count_area;
	unsigned int sb, blk_per_trk;
	int status, i;
	struct dasd_ccw_req *init_cqr;

	device = block->base;
	private = (struct dasd_eckd_private *) device->private;
	status = private->init_cqr_status;
	private->init_cqr_status = -1;
	if (status == INIT_CQR_ERROR) {
		/* try again, this time with full ERP */
		init_cqr = FUNC1(device);
		FUNC5(init_cqr);
		status = FUNC2(init_cqr);
		FUNC4(init_cqr, device);
	}

	if (device->features & DASD_FEATURE_USERAW) {
		block->bp_block = DASD_RAW_BLOCKSIZE;
		blk_per_trk = DASD_RAW_BLOCK_PER_TRACK;
		block->s2b_shift = 3;
		goto raw;
	}

	if (status == INIT_CQR_UNFORMATTED) {
		FUNC8(&device->cdev->dev, "The DASD is not formatted\n");
		return -EMEDIUMTYPE;
	} else if (status == INIT_CQR_ERROR) {
		FUNC6(&device->cdev->dev,
			"Detecting the DASD disk layout failed because "
			"of an I/O error\n");
		return -EIO;
	}

	private->uses_cdl = 1;
	/* Check Track 0 for Compatible Disk Layout */
	count_area = NULL;
	for (i = 0; i < 3; i++) {
		if (private->count_area[i].kl != 4 ||
		    private->count_area[i].dl != FUNC3(i) - 4 ||
		    private->count_area[i].cyl != 0 ||
		    private->count_area[i].head != count_area_head[i] ||
		    private->count_area[i].record != count_area_rec[i]) {
			private->uses_cdl = 0;
			break;
		}
	}
	if (i == 3)
		count_area = &private->count_area[4];

	if (private->uses_cdl == 0) {
		for (i = 0; i < 5; i++) {
			if ((private->count_area[i].kl != 0) ||
			    (private->count_area[i].dl !=
			     private->count_area[0].dl) ||
			    private->count_area[i].cyl !=  0 ||
			    private->count_area[i].head != count_area_head[i] ||
			    private->count_area[i].record != count_area_rec[i])
				break;
		}
		if (i == 5)
			count_area = &private->count_area[0];
	} else {
		if (private->count_area[3].record == 1)
			FUNC8(&device->cdev->dev,
				 "Track 0 has no records following the VTOC\n");
	}

	if (count_area != NULL && count_area->kl == 0) {
		/* we found notthing violating our disk layout */
		if (FUNC0(count_area->dl) == 0)
			block->bp_block = count_area->dl;
	}
	if (block->bp_block == 0) {
		FUNC8(&device->cdev->dev,
			 "The disk layout of the DASD is not supported\n");
		return -EMEDIUMTYPE;
	}
	block->s2b_shift = 0;	/* bits to shift 512 to get a block */
	for (sb = 512; sb < block->bp_block; sb = sb << 1)
		block->s2b_shift++;

	blk_per_trk = FUNC9(&private->rdc_data, 0, block->bp_block);

raw:
	block->blocks = (private->real_cyl *
			  private->rdc_data.trk_per_cyl *
			  blk_per_trk);

	FUNC7(&device->cdev->dev,
		 "DASD with %d KB/block, %d KB total size, %d KB/track, "
		 "%s\n", (block->bp_block >> 10),
		 ((private->real_cyl *
		   private->rdc_data.trk_per_cyl *
		   blk_per_trk * (block->bp_block >> 9)) >> 1),
		 ((blk_per_trk * block->bp_block) >> 10),
		 private->uses_cdl ?
		 "compatible disk layout" : "linux disk layout");

	return 0;
}