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
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int OMAP_DMA_SYNC_BLOCK ; 
 int OMAP_DMA_SYNC_FRAME ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

void FUNC9(int lch, int data_type, int elem_count,
				  int frame_count, int sync_mode,
				  int dma_trigger, int src_or_dst_synch)
{
	u32 l;

	l = FUNC7(FUNC4(lch));
	l &= ~0x03;
	l |= data_type;
	FUNC8(l, FUNC4(lch));

	if (FUNC5()) {
		u16 ccr;

		ccr = FUNC7(FUNC0(lch));
		ccr &= ~(1 << 5);
		if (sync_mode == OMAP_DMA_SYNC_FRAME)
			ccr |= 1 << 5;
		FUNC8(ccr, FUNC0(lch));

		ccr = FUNC7(FUNC1(lch));
		ccr &= ~(1 << 2);
		if (sync_mode == OMAP_DMA_SYNC_BLOCK)
			ccr |= 1 << 2;
		FUNC8(ccr, FUNC1(lch));
	}

	if (FUNC6() && dma_trigger) {
		u32 val;

		val = FUNC7(FUNC0(lch));

		/* DMA_SYNCHRO_CONTROL_UPPER depends on the channel number */
		val &= ~((3 << 19) | 0x1f);
		val |= (dma_trigger & ~0x1f) << 14;
		val |= dma_trigger & 0x1f;

		if (sync_mode & OMAP_DMA_SYNC_FRAME)
			val |= 1 << 5;
		else
			val &= ~(1 << 5);

		if (sync_mode & OMAP_DMA_SYNC_BLOCK)
			val |= 1 << 18;
		else
			val &= ~(1 << 18);

		if (src_or_dst_synch)
			val |= 1 << 24;		/* source synch */
		else
			val &= ~(1 << 24);	/* dest synch */

		FUNC8(val, FUNC0(lch));
	}

	FUNC8(elem_count, FUNC2(lch));
	FUNC8(frame_count, FUNC3(lch));
}