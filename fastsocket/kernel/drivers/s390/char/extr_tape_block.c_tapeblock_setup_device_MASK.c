#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct tape_blk_data {int medium_changed; TYPE_1__* request_queue; int /*<<< orphan*/  requeue_task; struct gendisk* disk; int /*<<< orphan*/  request_queue_lock; int /*<<< orphan*/  requeue_scheduled; struct tape_device* device; } ;
struct tape_device {int first_minor; struct tape_blk_data blk_data; } ;
struct gendisk {int first_minor; int /*<<< orphan*/  disk_name; TYPE_1__* queue; void* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; } ;
struct TYPE_9__ {void* queuedata; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAPEBLOCK_HSEC_SIZE ; 
 int /*<<< orphan*/  TAPEBLOCK_MAX_SEC ; 
 int TAPE_MINORS_PER_DEV ; 
 int /*<<< orphan*/  FUNC1 (struct gendisk*) ; 
 struct gendisk* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,long) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,long) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,long) ; 
 int FUNC11 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC15 (struct tape_device*) ; 
 int /*<<< orphan*/  tapeblock_fops ; 
 int /*<<< orphan*/  tapeblock_major ; 
 int /*<<< orphan*/  tapeblock_request_fn ; 
 int /*<<< orphan*/  tapeblock_requeue ; 

int
FUNC16(struct tape_device * device)
{
	struct tape_blk_data *	blkdat;
	struct gendisk *	disk;
	int			rc;

	blkdat = &device->blk_data;
	blkdat->device = device;
	FUNC13(&blkdat->request_queue_lock);
	FUNC3(&blkdat->requeue_scheduled, 0);

	blkdat->request_queue = FUNC5(
		tapeblock_request_fn,
		&blkdat->request_queue_lock
	);
	if (!blkdat->request_queue)
		return -ENOMEM;

	rc = FUNC11(blkdat->request_queue, "noop");
	if (rc)
		goto cleanup_queue;

	FUNC6(blkdat->request_queue, TAPEBLOCK_HSEC_SIZE);
	FUNC7(blkdat->request_queue, TAPEBLOCK_MAX_SEC);
	FUNC9(blkdat->request_queue, -1L);
	FUNC8(blkdat->request_queue, -1L);
	FUNC10(blkdat->request_queue, -1L);

	disk = FUNC2(1);
	if (!disk) {
		rc = -ENOMEM;
		goto cleanup_queue;
	}

	disk->major = tapeblock_major;
	disk->first_minor = device->first_minor;
	disk->fops = &tapeblock_fops;
	disk->private_data = FUNC15(device);
	disk->queue = blkdat->request_queue;
	FUNC12(disk, 0);
	FUNC14(disk->disk_name, "btibm%d",
		device->first_minor / TAPE_MINORS_PER_DEV);

	blkdat->disk = disk;
	blkdat->medium_changed = 1;
	blkdat->request_queue->queuedata = FUNC15(device);

	FUNC1(disk);

	FUNC15(device);
	FUNC0(&blkdat->requeue_task, tapeblock_requeue);

	return 0;

cleanup_queue:
	FUNC4(blkdat->request_queue);
	blkdat->request_queue = NULL;

	return rc;
}