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
 int CLOCK_INIT_DONE ; 
 unsigned int MACIO_EN_DMA ; 
 int /*<<< orphan*/  MACIO_SCSI_CSR_ADDR ; 
 int* clk_ctrl ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int clk_state ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned int mcsr;
	unsigned long flags;

	if (!clk_ctrl)
		return;
	if (!(clk_state & CLOCK_INIT_DONE)) {
		FUNC4(flags);
		FUNC0();
		clk_state |= CLOCK_INIT_DONE;       /* all done */
		FUNC3(flags);
		return;
	}
	if (!(clk_ctrl[2] & 1))
		return;               /* no speed up yet */

	FUNC4(flags);

	/* if SCSI DMA in progress, don't slow clock */
	mcsr = FUNC2(MACIO_SCSI_CSR_ADDR);
	if ((mcsr&MACIO_EN_DMA) != 0) {
		FUNC3(flags);
		return;
	}
	/* TODO... the minimum clock setting ought to increase the
	 * memory refresh interval..
	 */
	FUNC1();
	FUNC3(flags);
}