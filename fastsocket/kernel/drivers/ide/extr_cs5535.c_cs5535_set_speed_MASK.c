#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_6__ {int dn; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATAC_CH0D0_DMA ; 
 int /*<<< orphan*/  ATAC_CH0D0_PIO ; 
 int /*<<< orphan*/  ATAC_CH0D1_DMA ; 
 int /*<<< orphan*/  ATAC_CH0D1_PIO ; 
 scalar_t__ const XFER_MW_DMA_0 ; 
 scalar_t__ const XFER_MW_DMA_2 ; 
 scalar_t__ const XFER_PIO_0 ; 
 scalar_t__ const XFER_SW_DMA_0 ; 
 scalar_t__ const XFER_UDMA_0 ; 
 scalar_t__ const XFER_UDMA_4 ; 
 int* cs5535_mwdma_timings ; 
 int* cs5535_pio_cmd_timings ; 
 int* cs5535_pio_dta_timings ; 
 int* cs5535_udma_timings ; 
 scalar_t__ FUNC0 (TYPE_1__*,int,int) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(ide_drive_t *drive, const u8 speed)
{
	u32 reg = 0, dummy;
	u8 unit = drive->dn & 1;

	/* Set the PIO timings */
	if (speed < XFER_SW_DMA_0) {
		ide_drive_t *pair = FUNC1(drive);
		u8 cmd, pioa;

		cmd = pioa = speed - XFER_PIO_0;

		if (pair) {
			u8 piob = FUNC0(pair, 255, 4);

			if (piob < cmd)
				cmd = piob;
		}

		/* Write the speed of the current drive */
		reg = (cs5535_pio_cmd_timings[cmd] << 16) |
			cs5535_pio_dta_timings[pioa];
		FUNC3(unit ? ATAC_CH0D1_PIO : ATAC_CH0D0_PIO, reg, 0);

		/* And if nessesary - change the speed of the other drive */
		FUNC2(unit ?  ATAC_CH0D0_PIO : ATAC_CH0D1_PIO, reg, dummy);

		if (((reg >> 16) & cs5535_pio_cmd_timings[cmd]) !=
			cs5535_pio_cmd_timings[cmd]) {
			reg &= 0x0000FFFF;
			reg |= cs5535_pio_cmd_timings[cmd] << 16;
			FUNC3(unit ? ATAC_CH0D0_PIO : ATAC_CH0D1_PIO, reg, 0);
		}

		/* Set bit 31 of the DMA register for PIO format 1 timings */
		FUNC2(unit ?  ATAC_CH0D1_DMA : ATAC_CH0D0_DMA, reg, dummy);
		FUNC3(unit ? ATAC_CH0D1_DMA : ATAC_CH0D0_DMA,
					reg | 0x80000000UL, 0);
	} else {
		FUNC2(unit ? ATAC_CH0D1_DMA : ATAC_CH0D0_DMA, reg, dummy);

		reg &= 0x80000000UL;  /* Preserve the PIO format bit */

		if (speed >= XFER_UDMA_0 && speed <= XFER_UDMA_4)
			reg |= cs5535_udma_timings[speed - XFER_UDMA_0];
		else if (speed >= XFER_MW_DMA_0 && speed <= XFER_MW_DMA_2)
			reg |= cs5535_mwdma_timings[speed - XFER_MW_DMA_0];
		else
			return;

		FUNC3(unit ? ATAC_CH0D1_DMA : ATAC_CH0D0_DMA, reg, 0);
	}
}