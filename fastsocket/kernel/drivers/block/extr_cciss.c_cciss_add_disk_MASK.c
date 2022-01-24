#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct gendisk {int first_minor; TYPE_6__* queue; int /*<<< orphan*/ * driverfs_dev; TYPE_2__* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; int /*<<< orphan*/  disk_name; } ;
struct TYPE_15__ {int ctlr; TYPE_2__** drv; int /*<<< orphan*/  cciss_max_sectors; int /*<<< orphan*/  maxsgentries; TYPE_1__* pdev; int /*<<< orphan*/  major; int /*<<< orphan*/  lock; } ;
typedef  TYPE_3__ ctlr_info_t ;
struct TYPE_16__ {TYPE_3__* queuedata; } ;
struct TYPE_14__ {TYPE_6__* queue; int /*<<< orphan*/  block_size; int /*<<< orphan*/  dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  dma_mask; } ;

/* Variables and functions */
 int NWD_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  cciss_fops ; 
 int /*<<< orphan*/  cciss_softirq_done ; 
 int /*<<< orphan*/  do_cciss_request ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(ctlr_info_t *h, struct gendisk *disk,
				int drv_index)
{
	disk->queue = FUNC2(do_cciss_request, &h->lock);
	if (!disk->queue)
		goto init_queue_failure;
	FUNC9(disk->disk_name, "cciss/c%dd%d", h->ctlr, drv_index);
	disk->major = h->major;
	disk->first_minor = drv_index << NWD_SHIFT;
	disk->fops = &cciss_fops;
	if (FUNC8(h, drv_index))
		goto cleanup_queue;
	disk->private_data = h->drv[drv_index];
	disk->driverfs_dev = &h->drv[drv_index]->dev;

	/* Set up queue information */
	FUNC3(disk->queue, h->pdev->dma_mask);

	/* This is a hardware imposed limit. */
	FUNC6(disk->queue, h->maxsgentries);

	FUNC5(disk->queue, h->cciss_max_sectors);

	FUNC7(disk->queue, cciss_softirq_done);

	disk->queue->queuedata = h;

	FUNC4(disk->queue,
				     h->drv[drv_index]->block_size);

	/* Make sure all queue data is written out before */
	/* setting h->drv[drv_index]->queue, as setting this */
	/* allows the interrupt handler to start the queue */
	FUNC10();
	h->drv[drv_index]->queue = disk->queue;
	FUNC0(disk);
	return 0;

cleanup_queue:
	FUNC1(disk->queue);
	disk->queue = NULL;
init_queue_failure:
	return -1;
}