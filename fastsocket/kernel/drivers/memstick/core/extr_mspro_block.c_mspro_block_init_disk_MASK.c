#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct mspro_sys_info {int /*<<< orphan*/  block_size; int /*<<< orphan*/  user_block_count; int /*<<< orphan*/  unit_size; int /*<<< orphan*/  sectors_per_track; int /*<<< orphan*/  heads; int /*<<< orphan*/  cylinders; } ;
struct mspro_sys_attr {scalar_t__ id; struct mspro_sys_info* data; } ;
struct mspro_devinfo {int /*<<< orphan*/  block_size; int /*<<< orphan*/  user_block_count; int /*<<< orphan*/  unit_size; int /*<<< orphan*/  sectors_per_track; int /*<<< orphan*/  heads; int /*<<< orphan*/  cylinders; } ;
struct TYPE_15__ {scalar_t__* attrs; } ;
struct mspro_block_data {unsigned long cylinders; unsigned long heads; unsigned long sectors_per_track; unsigned long page_size; int usage_count; int active; TYPE_3__* disk; TYPE_5__* queue; int /*<<< orphan*/  q_lock; TYPE_2__ attr_group; } ;
struct TYPE_14__ {scalar_t__* dma_mask; } ;
struct memstick_host {TYPE_1__ dev; } ;
struct memstick_dev {int /*<<< orphan*/  dev; struct memstick_host* host; } ;
struct TYPE_17__ {struct memstick_dev* queuedata; } ;
struct TYPE_16__ {int first_minor; int /*<<< orphan*/  disk_name; int /*<<< orphan*/ * driverfs_dev; TYPE_5__* queue; struct mspro_block_data* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; } ;

/* Variables and functions */
 scalar_t__ BLK_BOUNCE_HIGH ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MSPRO_BLOCK_ID_DEVINFO ; 
 scalar_t__ MSPRO_BLOCK_ID_SYSINFO ; 
 int MSPRO_BLOCK_MAX_PAGES ; 
 int /*<<< orphan*/  MSPRO_BLOCK_MAX_SEGS ; 
 int MSPRO_BLOCK_PART_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 (int) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,unsigned long) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct memstick_dev*,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  major ; 
 struct mspro_block_data* FUNC14 (struct memstick_dev*) ; 
 int /*<<< orphan*/  ms_block_bdops ; 
 int /*<<< orphan*/  mspro_block_disk_idr ; 
 int /*<<< orphan*/  mspro_block_disk_lock ; 
 int /*<<< orphan*/  mspro_block_prepare_req ; 
 int /*<<< orphan*/  mspro_block_submit_req ; 
 struct mspro_sys_attr* FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC21(struct memstick_dev *card)
{
	struct mspro_block_data *msb = FUNC14(card);
	struct memstick_host *host = card->host;
	struct mspro_devinfo *dev_info = NULL;
	struct mspro_sys_info *sys_info = NULL;
	struct mspro_sys_attr *s_attr = NULL;
	int rc, disk_id;
	u64 limit = BLK_BOUNCE_HIGH;
	unsigned long capacity;

	if (host->dev.dma_mask && *(host->dev.dma_mask))
		limit = *(host->dev.dma_mask);

	for (rc = 0; msb->attr_group.attrs[rc]; ++rc) {
		s_attr = FUNC15(msb->attr_group.attrs[rc]);

		if (s_attr->id == MSPRO_BLOCK_ID_DEVINFO)
			dev_info = s_attr->data;
		else if (s_attr->id == MSPRO_BLOCK_ID_SYSINFO)
			sys_info = s_attr->data;
	}

	if (!dev_info || !sys_info)
		return -ENODEV;

	msb->cylinders = FUNC2(dev_info->cylinders);
	msb->heads = FUNC2(dev_info->heads);
	msb->sectors_per_track = FUNC2(dev_info->sectors_per_track);

	msb->page_size = FUNC2(sys_info->unit_size);

	if (!FUNC12(&mspro_block_disk_idr, GFP_KERNEL))
		return -ENOMEM;

	FUNC16(&mspro_block_disk_lock);
	rc = FUNC11(&mspro_block_disk_idr, card, &disk_id);
	FUNC17(&mspro_block_disk_lock);

	if (rc)
		return rc;

	if ((disk_id << MSPRO_BLOCK_PART_SHIFT) > 255) {
		rc = -ENOSPC;
		goto out_release_id;
	}

	msb->disk = FUNC1(1 << MSPRO_BLOCK_PART_SHIFT);
	if (!msb->disk) {
		rc = -ENOMEM;
		goto out_release_id;
	}

	msb->queue = FUNC3(mspro_block_submit_req, &msb->q_lock);
	if (!msb->queue) {
		rc = -ENOMEM;
		goto out_put_disk;
	}

	msb->queue->queuedata = card;
	FUNC9(msb->queue, mspro_block_prepare_req);

	FUNC4(msb->queue, limit);
	FUNC6(msb->queue, MSPRO_BLOCK_MAX_PAGES);
	FUNC8(msb->queue, MSPRO_BLOCK_MAX_SEGS);
	FUNC7(msb->queue,
				   MSPRO_BLOCK_MAX_PAGES * msb->page_size);

	msb->disk->major = major;
	msb->disk->first_minor = disk_id << MSPRO_BLOCK_PART_SHIFT;
	msb->disk->fops = &ms_block_bdops;
	msb->usage_count = 1;
	msb->disk->private_data = msb;
	msb->disk->queue = msb->queue;
	msb->disk->driverfs_dev = &card->dev;

	FUNC20(msb->disk->disk_name, "mspblk%d", disk_id);

	FUNC5(msb->queue, msb->page_size);

	capacity = FUNC2(sys_info->user_block_count);
	capacity *= FUNC2(sys_info->block_size);
	capacity *= msb->page_size >> 9;
	FUNC19(msb->disk, capacity);
	FUNC10(&card->dev, "capacity set %ld\n", capacity);

	FUNC0(msb->disk);
	msb->active = 1;
	return 0;

out_put_disk:
	FUNC18(msb->disk);
out_release_id:
	FUNC16(&mspro_block_disk_lock);
	FUNC13(&mspro_block_disk_idr, disk_id);
	FUNC17(&mspro_block_disk_lock);
	return rc;
}