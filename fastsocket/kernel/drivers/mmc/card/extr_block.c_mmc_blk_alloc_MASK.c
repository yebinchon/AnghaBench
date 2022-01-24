#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int capacity; int read_blkbits; } ;
struct TYPE_7__ {int sectors; } ;
struct mmc_card {TYPE_2__ csd; TYPE_1__ ext_csd; int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  queue; struct mmc_blk_data* data; int /*<<< orphan*/  issue_fn; } ;
struct mmc_blk_data {int usage; TYPE_3__* disk; TYPE_5__ queue; int /*<<< orphan*/  lock; int /*<<< orphan*/  read_only; } ;
struct TYPE_9__ {int first_minor; int /*<<< orphan*/  disk_name; int /*<<< orphan*/ * driverfs_dev; int /*<<< orphan*/  queue; struct mmc_blk_data* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 struct mmc_blk_data* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MMC_BLOCK_MAJOR ; 
 int MMC_NUM_MINORS ; 
 int MMC_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dev_use ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_blk_data*) ; 
 struct mmc_blk_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmc_bdops ; 
 int /*<<< orphan*/  mmc_blk_issue_rq ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_card*) ; 
 scalar_t__ FUNC8 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC9 (struct mmc_card*) ; 
 int FUNC10 (TYPE_5__*,struct mmc_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static struct mmc_blk_data *FUNC15(struct mmc_card *card)
{
	struct mmc_blk_data *md;
	int devidx, ret;

	devidx = FUNC4(dev_use, MMC_NUM_MINORS);
	if (devidx >= MMC_NUM_MINORS)
		return FUNC0(-ENOSPC);
	FUNC1(devidx, dev_use);

	md = FUNC6(sizeof(struct mmc_blk_data), GFP_KERNEL);
	if (!md) {
		ret = -ENOMEM;
		goto out;
	}


	/*
	 * Set the read-only status based on the supported commands
	 * and the write protect switch.
	 */
	md->read_only = FUNC7(card);

	md->disk = FUNC2(1 << MMC_SHIFT);
	if (md->disk == NULL) {
		ret = -ENOMEM;
		goto err_kfree;
	}

	FUNC13(&md->lock);
	md->usage = 1;

	ret = FUNC10(&md->queue, card, &md->lock);
	if (ret)
		goto err_putdisk;

	md->queue.issue_fn = mmc_blk_issue_rq;
	md->queue.data = md;

	md->disk->major	= MMC_BLOCK_MAJOR;
	md->disk->first_minor = devidx << MMC_SHIFT;
	md->disk->fops = &mmc_bdops;
	md->disk->private_data = md;
	md->disk->queue = md->queue.queue;
	md->disk->driverfs_dev = &card->dev;

	/*
	 * As discussed on lkml, GENHD_FL_REMOVABLE should:
	 *
	 * - be set for removable media with permanent block devices
	 * - be unset for removable block devices with permanent media
	 *
	 * Since MMC block devices clearly fall under the second
	 * case, we do not set GENHD_FL_REMOVABLE.  Userspace
	 * should use the block device creation/destruction hotplug
	 * messages to tell when the card is present.
	 */

	FUNC14(md->disk->disk_name, "mmcblk%d", devidx);

	FUNC3(md->queue.queue, 512);

	if (!FUNC9(card) && FUNC8(card)) {
		/*
		 * The EXT_CSD sector count is in number or 512 byte
		 * sectors.
		 */
		FUNC12(md->disk, card->ext_csd.sectors);
	} else {
		/*
		 * The CSD capacity field is in units of read_blkbits.
		 * set_capacity takes units of 512 bytes.
		 */
		FUNC12(md->disk,
			card->csd.capacity << (card->csd.read_blkbits - 9));
	}
	return md;

 err_putdisk:
	FUNC11(md->disk);
 err_kfree:
	FUNC5(md);
 out:
	return FUNC0(ret);
}