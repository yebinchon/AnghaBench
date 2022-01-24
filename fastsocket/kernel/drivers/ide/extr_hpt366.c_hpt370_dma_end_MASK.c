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
typedef  int u8 ;
struct TYPE_6__ {scalar_t__ dma_base; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_7__ {TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int ATA_DMA_ACTIVE ; 
 scalar_t__ ATA_DMA_STATUS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(ide_drive_t *drive)
{
	ide_hwif_t *hwif	= drive->hwif;
	u8  dma_stat		= FUNC2(hwif->dma_base + ATA_DMA_STATUS);

	if (dma_stat & ATA_DMA_ACTIVE) {
		/* wait a little */
		FUNC3(20);
		dma_stat = FUNC2(hwif->dma_base + ATA_DMA_STATUS);
		if (dma_stat & ATA_DMA_ACTIVE)
			FUNC0(drive);
	}
	return FUNC1(drive);
}