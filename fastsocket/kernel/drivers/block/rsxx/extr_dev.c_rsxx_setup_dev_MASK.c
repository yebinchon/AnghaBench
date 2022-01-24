#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_15__ ;

/* Type definitions */
struct TYPE_17__ {unsigned short block_size; } ;
struct TYPE_18__ {TYPE_1__ data; } ;
struct rsxx_cardinfo {scalar_t__ major; int disk_id; TYPE_5__* queue; TYPE_15__* gendisk; TYPE_4__* dev; TYPE_2__ config; int /*<<< orphan*/  dev_lock; } ;
struct TYPE_19__ {int discard_granularity; int discard_alignment; int discard_zeroes_data; } ;
struct TYPE_21__ {struct rsxx_cardinfo* queuedata; TYPE_3__ limits; } ;
struct TYPE_20__ {int /*<<< orphan*/  dev; } ;
struct TYPE_16__ {scalar_t__ major; TYPE_5__* queue; struct rsxx_cardinfo* private_data; int /*<<< orphan*/ * fops; scalar_t__ first_minor; int /*<<< orphan*/ * driverfs_dev; int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_BOUNCE_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  QUEUE_FLAG_DISCARD ; 
 int /*<<< orphan*/  QUEUE_FLAG_NONROT ; 
 int RSXX_HW_BLK_SIZE ; 
 TYPE_15__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,unsigned short) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  blkdev_max_hw_sectors ; 
 int /*<<< orphan*/  blkdev_minors ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  enable_blkdev ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  rsxx_fops ; 
 int /*<<< orphan*/  rsxx_make_request ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC18(struct rsxx_cardinfo *card)
{
	unsigned short blk_size;

	FUNC12(&card->dev_lock);

	if (!enable_blkdev)
		return 0;

	card->major = FUNC14(0, DRIVER_NAME);
	if (card->major < 0) {
		FUNC11(FUNC0(card), "Failed to get major number\n");
		return -ENOMEM;
	}

	card->queue = FUNC2(GFP_KERNEL);
	if (!card->queue) {
		FUNC11(FUNC0(card), "Failed queue alloc\n");
		FUNC17(card->major, DRIVER_NAME);
		return -ENOMEM;
	}

	card->gendisk = FUNC1(blkdev_minors);
	if (!card->gendisk) {
		FUNC11(FUNC0(card), "Failed disk alloc\n");
		FUNC3(card->queue);
		FUNC17(card->major, DRIVER_NAME);
		return -ENOMEM;
	}

	blk_size = card->config.data.block_size;

	FUNC7(card->queue, rsxx_make_request);
	FUNC4(card->queue, BLK_BOUNCE_ANY);
	FUNC5(card->queue, blk_size - 1);
	FUNC9(card->queue, blkdev_max_hw_sectors);
	FUNC6(card->queue, blk_size);
	FUNC10(card->queue, RSXX_HW_BLK_SIZE);

	FUNC13(QUEUE_FLAG_NONROT, card->queue);
	if (FUNC15(card)) {
		FUNC13(QUEUE_FLAG_DISCARD, card->queue);
		FUNC8(card->queue,
						RSXX_HW_BLK_SIZE >> 9);
		card->queue->limits.discard_granularity = RSXX_HW_BLK_SIZE;
		card->queue->limits.discard_alignment   = RSXX_HW_BLK_SIZE;
		card->queue->limits.discard_zeroes_data = 1;
	}

	card->queue->queuedata = card;

	FUNC16(card->gendisk->disk_name, sizeof(card->gendisk->disk_name),
		 "rsxx%d", card->disk_id);
	card->gendisk->driverfs_dev = &card->dev->dev;
	card->gendisk->major = card->major;
	card->gendisk->first_minor = 0;
	card->gendisk->fops = &rsxx_fops;
	card->gendisk->private_data = card;
	card->gendisk->queue = card->queue;

	return 0;
}