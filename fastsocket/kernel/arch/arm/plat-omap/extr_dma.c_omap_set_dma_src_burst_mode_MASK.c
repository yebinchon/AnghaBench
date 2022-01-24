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
typedef  enum omap_dma_burst_mode { ____Placeholder_omap_dma_burst_mode } omap_dma_burst_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  OMAP_DMA_DATA_BURST_16 131 
#define  OMAP_DMA_DATA_BURST_4 130 
#define  OMAP_DMA_DATA_BURST_8 129 
#define  OMAP_DMA_DATA_BURST_DIS 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

void FUNC5(int lch, enum omap_dma_burst_mode burst_mode)
{
	unsigned int burst = 0;
	u32 l;

	l = FUNC3(FUNC1(lch));
	l &= ~(0x03 << 7);

	switch (burst_mode) {
	case OMAP_DMA_DATA_BURST_DIS:
		break;
	case OMAP_DMA_DATA_BURST_4:
		if (FUNC2())
			burst = 0x1;
		else
			burst = 0x2;
		break;
	case OMAP_DMA_DATA_BURST_8:
		if (FUNC2()) {
			burst = 0x2;
			break;
		}
		/* not supported by current hardware on OMAP1
		 * w |= (0x03 << 7);
		 * fall through
		 */
	case OMAP_DMA_DATA_BURST_16:
		if (FUNC2()) {
			burst = 0x3;
			break;
		}
		/* OMAP1 don't support burst 16
		 * fall through
		 */
	default:
		FUNC0();
	}

	l |= (burst << 7);
	FUNC4(l, FUNC1(lch));
}