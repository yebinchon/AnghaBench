#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u16 ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t const XFER_MW_DMA_0 ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC3 (size_t const) ; 

__attribute__((used)) static void FUNC4(ide_drive_t *drive, const u8 speed)
{
	static u16 mwdma_timings[] = {0x0707, 0x0201, 0x0200};
	unsigned long timings = (unsigned long)FUNC1(drive);
	u16 drv_ctrl;

 	FUNC0(("sl82c105_tune_chipset(drive:%s, speed:%s)\n",
	     drive->name, FUNC3(speed)));

	drv_ctrl = mwdma_timings[speed - XFER_MW_DMA_0];

	/*
	 * Store the DMA timings so that we can actually program
	 * them when DMA will be turned on...
	 */
	timings &= 0x0000ffff;
	timings |= (unsigned long)drv_ctrl << 16;
	FUNC2(drive, (void *)timings);
}