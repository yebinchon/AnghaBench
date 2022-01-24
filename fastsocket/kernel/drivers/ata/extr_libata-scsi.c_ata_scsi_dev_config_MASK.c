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
struct scsi_device {scalar_t__ sector_size; int manage_start_stop; TYPE_1__* host; int /*<<< orphan*/  supported_events; struct request_queue* request_queue; } ;
struct request_queue {int bounce_gfp; } ;
struct ata_device {int flags; scalar_t__ class; struct scsi_device* sdev; int /*<<< orphan*/  id; int /*<<< orphan*/  max_sectors; } ;
struct TYPE_2__ {scalar_t__ can_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATAPI_MAX_DRAIN ; 
 scalar_t__ ATA_DEV_ATAPI ; 
 int ATA_DFLAG_AN ; 
 int ATA_DFLAG_NCQ ; 
 int ATA_DFLAG_NO_UNLOAD ; 
 scalar_t__ ATA_DMA_PAD_SZ ; 
 scalar_t__ ATA_MAX_QUEUE ; 
 scalar_t__ ATA_SECT_SIZE ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  MSG_SIMPLE_TAG ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  SDEV_EVT_MEDIA_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (struct ata_device*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atapi_drain_needed ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct request_queue*,scalar_t__) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct scsi_device *sdev,
			       struct ata_device *dev)
{
	struct request_queue *q = sdev->request_queue;

	if (!FUNC1(dev->id))
		dev->flags |= ATA_DFLAG_NO_UNLOAD;

	/* configure max sectors */
	FUNC6(q, dev->max_sectors);

	if (dev->class == ATA_DEV_ATAPI) {
		void *buf;

		sdev->sector_size = ATA_SECT_SIZE;

		/* set DMA padding */
		FUNC8(q, ATA_DMA_PAD_SZ - 1);

		/* configure draining */
		buf = FUNC9(ATAPI_MAX_DRAIN, q->bounce_gfp | GFP_KERNEL);
		if (!buf) {
			FUNC0(dev, KERN_ERR,
				       "drain buffer allocation failed\n");
			return -ENOMEM;
		}

		FUNC4(q, atapi_drain_needed, buf, ATAPI_MAX_DRAIN);
	} else {
		sdev->sector_size = FUNC2(dev->id);
		sdev->manage_start_stop = 1;
	}

	/*
	 * ata_pio_sectors() expects buffer for each sector to not cross
	 * page boundary.  Enforce it by requiring buffers to be sector
	 * aligned, which works iff sector_size is not larger than
	 * PAGE_SIZE.  ATAPI devices also need the alignment as
	 * IDENTIFY_PACKET is executed as ATA_PROT_PIO.
	 */
	if (sdev->sector_size > PAGE_SIZE)
		FUNC0(dev, KERN_WARNING,
			"sector_size=%u > PAGE_SIZE, PIO may malfunction\n",
			sdev->sector_size);

	FUNC7(q, sdev->sector_size - 1);

	if (dev->flags & ATA_DFLAG_AN)
		FUNC12(SDEV_EVT_MEDIA_CHANGE, sdev->supported_events);

	if (dev->flags & ATA_DFLAG_NCQ) {
		int depth;

		depth = FUNC10(sdev->host->can_queue, FUNC3(dev->id));
		depth = FUNC10(ATA_MAX_QUEUE - 1, depth);
		FUNC11(sdev, MSG_SIMPLE_TAG, depth);
	}

	FUNC5(q, false);

	dev->sdev = sdev;
	return 0;
}