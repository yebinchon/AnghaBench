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
typedef  int u32 ;
typedef  int /*<<< orphan*/  dma_chan_link_map ;
struct TYPE_2__ {int next_lch; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ OMAP2430_REV_ES1_0 ; 
 int OMAP_DMA4_LOGICAL_DMA_CH_COUNT ; 
 int /*<<< orphan*/  OMAP_DMA_ACTIVE ; 
 int OMAP_DMA_CCR_EN ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 TYPE_1__* dma_chan ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 () ; 

void FUNC12(int lch)
{
	u32 l;

	if (!FUNC9() && dma_chan[lch].next_lch != -1) {
		int next_lch, cur_lch;
		char dma_chan_link_map[OMAP_DMA4_LOGICAL_DMA_CH_COUNT];

		dma_chan_link_map[lch] = 1;
		/* Set the link register of the first channel */
		FUNC7(lch);

		FUNC8(dma_chan_link_map, 0, sizeof(dma_chan_link_map));
		cur_lch = dma_chan[lch].next_lch;
		do {
			next_lch = dma_chan[cur_lch].next_lch;

			/* The loop case: we've been here already */
			if (dma_chan_link_map[cur_lch])
				break;
			/* Mark the current channel */
			dma_chan_link_map[cur_lch] = 1;

			FUNC7(cur_lch);
			FUNC10(cur_lch);

			cur_lch = next_lch;
		} while (next_lch != -1);
	} else if (FUNC2() ||
		(FUNC3() &&  FUNC11() <= OMAP2430_REV_ES1_0)) {

		/* Errata: Need to write lch even if not using chaining */
		FUNC6(lch, FUNC1(lch));
	}

	FUNC10(lch);

	l = FUNC5(FUNC0(lch));

	/*
	 * Errata: On ES2.0 BUFFERING disable must be set.
	 * This will always fail on ES1.0
	 */
	if (FUNC4())
		l |= OMAP_DMA_CCR_EN;

	l |= OMAP_DMA_CCR_EN;
	FUNC6(l, FUNC0(lch));

	dma_chan[lch].flags |= OMAP_DMA_ACTIVE;
}