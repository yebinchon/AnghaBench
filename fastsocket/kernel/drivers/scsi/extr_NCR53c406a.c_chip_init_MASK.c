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

/* Variables and functions */
 int C1_IMG ; 
 int C2_IMG ; 
 int C3_IMG ; 
 int C4_IMG ; 
 int /*<<< orphan*/  CLKCONV ; 
 int /*<<< orphan*/  CONFIG1 ; 
 int /*<<< orphan*/  CONFIG2 ; 
 int /*<<< orphan*/  CONFIG3 ; 
 int /*<<< orphan*/  CONFIG4 ; 
 int /*<<< orphan*/  PIO_FLAG ; 
 int /*<<< orphan*/  PIO_STATUS ; 
 int /*<<< orphan*/  REG1 ; 
 int /*<<< orphan*/  SRTIMOUT ; 
 int /*<<< orphan*/  SYNCOFF ; 
 int /*<<< orphan*/  SYNCPRD ; 
 int SYNC_MODE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void)
{
	REG1;
#if USE_DMA
	outb(0x00, PIO_STATUS);
#else				/* USE_PIO */
	FUNC0(0x01, PIO_STATUS);
#endif
	FUNC0(0x00, PIO_FLAG);

	FUNC0(C4_IMG, CONFIG4);	/* REG0; */
	FUNC0(C3_IMG, CONFIG3);
	FUNC0(C2_IMG, CONFIG2);
	FUNC0(C1_IMG, CONFIG1);

	FUNC0(0x05, CLKCONV);	/* clock conversion factor */
	FUNC0(0x9C, SRTIMOUT);	/* Selection timeout */
	FUNC0(0x05, SYNCPRD);	/* Synchronous transfer period */
	FUNC0(SYNC_MODE, SYNCOFF);	/* synchronous mode */
}