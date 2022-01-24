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
typedef  int uint ;
typedef  int u32 ;
struct TYPE_2__ {int dmactrlflags; } ;
struct dma_info {TYPE_1__ dma; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int D64_XC_PD ; 
 int /*<<< orphan*/  FUNC0 (struct dma_info*,int) ; 
 int DMA_CTRL_PEN ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint FUNC3(struct dma_info *di, uint mask, uint flags)
{
	uint dmactrlflags;

	if (di == NULL)
		return 0;

	dmactrlflags = di->dma.dmactrlflags;
	dmactrlflags &= ~mask;
	dmactrlflags |= flags;

	/* If trying to enable parity, check if parity is actually supported */
	if (dmactrlflags & DMA_CTRL_PEN) {
		u32 control;

		control = FUNC1(di->core, FUNC0(di, control));
		FUNC2(di->core, FUNC0(di, control),
		      control | D64_XC_PD);
		if (FUNC1(di->core, FUNC0(di, control)) &
		    D64_XC_PD)
			/* We *can* disable it so it is supported,
			 * restore control register
			 */
			FUNC2(di->core, FUNC0(di, control),
				     control);
		else
			/* Not supported, don't allow it to be enabled */
			dmactrlflags &= ~DMA_CTRL_PEN;
	}

	di->dma.dmactrlflags = dmactrlflags;

	return dmactrlflags;
}