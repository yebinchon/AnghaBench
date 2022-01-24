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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  dma_chan_link_map ;
struct TYPE_2__ {int next_lch; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int OMAP_DMA4_LOGICAL_DMA_CH_COUNT ; 
 int /*<<< orphan*/  OMAP_DMA_ACTIVE ; 
 int /*<<< orphan*/  OMAP_DMA_CCR_EN ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* dma_chan ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(int lch)
{
	u32 l;

	/* Disable all interrupts on the channel */
	if (FUNC2())
		FUNC5(0, FUNC1(lch));

	l = FUNC4(FUNC0(lch));
	l &= ~OMAP_DMA_CCR_EN;
	FUNC5(l, FUNC0(lch));

	if (!FUNC7() && dma_chan[lch].next_lch != -1) {
		int next_lch, cur_lch = lch;
		char dma_chan_link_map[OMAP_DMA4_LOGICAL_DMA_CH_COUNT];

		FUNC6(dma_chan_link_map, 0, sizeof(dma_chan_link_map));
		do {
			/* The loop case: we've been here already */
			if (dma_chan_link_map[cur_lch])
				break;
			/* Mark the current channel */
			dma_chan_link_map[cur_lch] = 1;

			FUNC3(cur_lch);

			next_lch = dma_chan[cur_lch].next_lch;
			cur_lch = next_lch;
		} while (next_lch != -1);
	}

	dma_chan[lch].flags &= ~OMAP_DMA_ACTIVE;
}