#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct request_queue {TYPE_2__* queuedata; } ;
struct TYPE_6__ {int rqsize; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_7__ {struct request_queue* queue; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_BUS_IS_PHYS ; 
 int PRD_ENTRIES ; 
 struct request_queue* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int) ; 
 int /*<<< orphan*/  do_ide_request ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC6(ide_drive_t *drive)
{
	struct request_queue *q;
	ide_hwif_t *hwif = drive->hwif;
	int max_sectors = 256;
	int max_sg_entries = PRD_ENTRIES;

	/*
	 *	Our default set up assumes the normal IDE case,
	 *	that is 64K segmenting, standard PRD setup
	 *	and LBA28. Some drivers then impose their own
	 *	limits and LBA48 we could raise it but as yet
	 *	do not.
	 */

	q = FUNC0(do_ide_request, NULL, FUNC4(hwif));
	if (!q)
		return 1;

	q->queuedata = drive;
	FUNC3(q, 0xffff);

	if (hwif->rqsize < max_sectors)
		max_sectors = hwif->rqsize;
	FUNC1(q, max_sectors);

#ifdef CONFIG_PCI
	/* When we have an IOMMU, we may have a problem where pci_map_sg()
	 * creates segments that don't completely match our boundary
	 * requirements and thus need to be broken up again. Because it
	 * doesn't align properly either, we may actually have to break up
	 * to more segments than what was we got in the first place, a max
	 * worst case is twice as many.
	 * This will be fixed once we teach pci_map_sg() about our boundary
	 * requirements, hopefully soon. *FIXME*
	 */
	if (!PCI_DMA_BUS_IS_PHYS)
		max_sg_entries >>= 1;
#endif /* CONFIG_PCI */

	FUNC2(q, max_sg_entries);

	/* assign drive queue */
	drive->queue = q;

	/* needs drive->queue to be set */
	FUNC5(drive, 1);

	return 0;
}