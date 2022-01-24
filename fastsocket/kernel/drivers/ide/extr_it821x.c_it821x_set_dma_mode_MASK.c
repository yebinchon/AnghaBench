#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  ide_drive_t ;

/* Variables and functions */
 scalar_t__ const XFER_MW_DMA_0 ; 
 scalar_t__ const XFER_MW_DMA_2 ; 
 scalar_t__ const XFER_UDMA_0 ; 
 scalar_t__ const XFER_UDMA_6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__ const) ; 

__attribute__((used)) static void FUNC2(ide_drive_t *drive, const u8 speed)
{
	/*
	 * MWDMA tuning is really hard because our MWDMA and PIO
	 * timings are kept in the same place.  We can switch in the
	 * host dma on/off callbacks.
	 */
	if (speed >= XFER_UDMA_0 && speed <= XFER_UDMA_6)
		FUNC1(drive, speed - XFER_UDMA_0);
	else if (speed >= XFER_MW_DMA_0 && speed <= XFER_MW_DMA_2)
		FUNC0(drive, speed - XFER_MW_DMA_0);
}