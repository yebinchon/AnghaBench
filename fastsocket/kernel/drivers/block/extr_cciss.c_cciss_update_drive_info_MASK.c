#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct gendisk {int dummy; } ;
typedef  int sector_t ;
struct TYPE_23__ {unsigned int block_size; int nr_blocks; int raid_level; scalar_t__ heads; scalar_t__ sectors; scalar_t__ cylinders; int busy_configuring; int /*<<< orphan*/  rev; int /*<<< orphan*/  model; int /*<<< orphan*/  vendor; int /*<<< orphan*/  serial_no; scalar_t__ device_initialized; int /*<<< orphan*/  LunID; } ;
typedef  TYPE_2__ drive_info_struct ;
struct TYPE_24__ {scalar_t__ cciss_read; TYPE_1__* pdev; int /*<<< orphan*/  num_luns; TYPE_2__** drv; struct gendisk** gendisk; int /*<<< orphan*/  lock; int /*<<< orphan*/  cciss_write; } ;
typedef  TYPE_3__ ctlr_info_t ;
struct TYPE_22__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_2__ InquiryData_struct ;

/* Variables and functions */
 scalar_t__ CCISS_READ_10 ; 
 scalar_t__ CCISS_READ_16 ; 
 int /*<<< orphan*/  CCISS_WRITE_10 ; 
 int /*<<< orphan*/  CCISS_WRITE_16 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MODEL_LEN ; 
 int REV_LEN ; 
 int VENDOR_LEN ; 
 scalar_t__ FUNC0 (TYPE_3__*,struct gendisk*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int,unsigned int,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int,int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,TYPE_2__*) ; 
 int FUNC9 (TYPE_3__*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 TYPE_2__* FUNC13 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC14 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct gendisk*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC20(ctlr_info_t *h, int drv_index,
	int first_time, int via_ioctl)
{
	struct gendisk *disk;
	InquiryData_struct *inq_buff = NULL;
	unsigned int block_size;
	sector_t total_size;
	unsigned long flags = 0;
	int ret = 0;
	drive_info_struct *drvinfo;

	/* Get information about the disk and modify the driver structure */
	inq_buff = FUNC13(sizeof(InquiryData_struct), GFP_KERNEL);
	drvinfo = FUNC14(sizeof(*drvinfo), GFP_KERNEL);
	if (inq_buff == NULL || drvinfo == NULL)
		goto mem_msg;

	/* testing to see if 16-byte CDBs are already being used */
	if (h->cciss_read == CCISS_READ_16) {
		FUNC7(h, drv_index,
			&total_size, &block_size);

	} else {
		FUNC6(h, drv_index,
				    &total_size, &block_size);

		/* if read_capacity returns all F's this volume is >2TB */
		/* in size so we switch to 16-byte CDB's for all */
		/* read/write ops */
		if (total_size == 0xFFFFFFFFULL) {
			FUNC7(h, drv_index,
			&total_size, &block_size);
			h->cciss_read = CCISS_READ_16;
			h->cciss_write = CCISS_WRITE_16;
		} else {
			h->cciss_read = CCISS_READ_10;
			h->cciss_write = CCISS_WRITE_10;
		}
	}

	FUNC3(h, drv_index, total_size, block_size,
			       inq_buff, drvinfo);
	drvinfo->block_size = block_size;
	drvinfo->nr_blocks = total_size + 1;

	FUNC4(h, drv_index, drvinfo->vendor,
				drvinfo->model, drvinfo->rev);
	FUNC5(h, drv_index, drvinfo->serial_no,
		sizeof(drvinfo->serial_no));
	/* Save the lunid in case we deregister the disk, below. */
	FUNC16(drvinfo->LunID, h->drv[drv_index]->LunID,
		sizeof(drvinfo->LunID));

	/* Is it the same disk we already know, and nothing's changed? */
	if (h->drv[drv_index]->raid_level != -1 &&
		((FUNC15(drvinfo->serial_no,
				h->drv[drv_index]->serial_no, 16) == 0) &&
		drvinfo->block_size == h->drv[drv_index]->block_size &&
		drvinfo->nr_blocks == h->drv[drv_index]->nr_blocks &&
		drvinfo->heads == h->drv[drv_index]->heads &&
		drvinfo->sectors == h->drv[drv_index]->sectors &&
		drvinfo->cylinders == h->drv[drv_index]->cylinders))
			/* The disk is unchanged, nothing to update */
			goto freeret;

	/* If we get here it's not the same disk, or something's changed,
	 * so we need to * deregister it, and re-register it, if it's not
	 * in use.
	 * If the disk already exists then deregister it before proceeding
	 * (unless it's the first disk (for the controller node).
	 */
	if (h->drv[drv_index]->raid_level != -1 && drv_index != 0) {
		FUNC11(&h->pdev->dev, "disk %d has changed.\n", drv_index);
		FUNC18(&h->lock, flags);
		h->drv[drv_index]->busy_configuring = 1;
		FUNC19(&h->lock, flags);

		/* deregister_disk sets h->drv[drv_index]->queue = NULL
		 * which keeps the interrupt handler from starting
		 * the queue.
		 */
		ret = FUNC9(h, drv_index, 0, via_ioctl);
	}

	/* If the disk is in use return */
	if (ret)
		goto freeret;

	/* Save the new information from cciss_geometry_inquiry
	 * and serial number inquiry.  If the disk was deregistered
	 * above, then h->drv[drv_index] will be NULL.
	 */
	if (h->drv[drv_index] == NULL) {
		drvinfo->device_initialized = 0;
		h->drv[drv_index] = drvinfo;
		drvinfo = NULL; /* so it won't be freed below. */
	} else {
		/* special case for cxd0 */
		h->drv[drv_index]->block_size = drvinfo->block_size;
		h->drv[drv_index]->nr_blocks = drvinfo->nr_blocks;
		h->drv[drv_index]->heads = drvinfo->heads;
		h->drv[drv_index]->sectors = drvinfo->sectors;
		h->drv[drv_index]->cylinders = drvinfo->cylinders;
		h->drv[drv_index]->raid_level = drvinfo->raid_level;
		FUNC16(h->drv[drv_index]->serial_no, drvinfo->serial_no, 16);
		FUNC16(h->drv[drv_index]->vendor, drvinfo->vendor,
			VENDOR_LEN + 1);
		FUNC16(h->drv[drv_index]->model, drvinfo->model, MODEL_LEN + 1);
		FUNC16(h->drv[drv_index]->rev, drvinfo->rev, REV_LEN + 1);
	}

	++h->num_luns;
	disk = h->gendisk[drv_index];
	FUNC17(disk, h->drv[drv_index]->nr_blocks);
	FUNC8(h, drv_index, h->drv[drv_index]);

	/* If it's not disk 0 (drv_index != 0)
	 * or if it was disk 0, but there was previously
	 * no actual corresponding configured logical drive
	 * (raid_leve == -1) then we want to update the
	 * logical drive's information.
	 */
	if (drv_index || first_time) {
		if (FUNC0(h, disk, drv_index) != 0) {
			FUNC2(h, drv_index);
			FUNC1(h, drv_index);
			FUNC11(&h->pdev->dev, "could not update disk %d\n",
				drv_index);
			--h->num_luns;
		}
	}

freeret:
	FUNC12(inq_buff);
	FUNC12(drvinfo);
	return;
mem_msg:
	FUNC10(&h->pdev->dev, "out of memory\n");
	goto freeret;
}