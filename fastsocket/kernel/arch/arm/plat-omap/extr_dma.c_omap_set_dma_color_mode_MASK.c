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
typedef  enum omap_dma_color_mode { ____Placeholder_omap_dma_color_mode } omap_dma_color_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
#define  OMAP_DMA_COLOR_DIS 130 
#define  OMAP_DMA_CONSTANT_FILL 129 
#define  OMAP_DMA_TRANSPARENT_COPY 128 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

void FUNC13(int lch, enum omap_dma_color_mode mode, u32 color)
{
	FUNC1(FUNC12());

	if (FUNC8()) {
		u16 w;

		w = FUNC10(FUNC3(lch));
		w &= ~0x03;

		switch (mode) {
		case OMAP_DMA_CONSTANT_FILL:
			w |= 0x01;
			break;
		case OMAP_DMA_TRANSPARENT_COPY:
			w |= 0x02;
			break;
		case OMAP_DMA_COLOR_DIS:
			break;
		default:
			FUNC0();
		}
		FUNC11(w, FUNC3(lch));

		w = FUNC10(FUNC7(lch));
		w &= ~0x0f;
		/* Default is channel type 2D */
		if (mode) {
			FUNC11((u16)color, FUNC5(lch));
			FUNC11((u16)(color >> 16), FUNC6(lch));
			w |= 1;		/* Channel type G */
		}
		FUNC11(w, FUNC7(lch));
	}

	if (FUNC9()) {
		u32 val;

		val = FUNC10(FUNC2(lch));
		val &= ~((1 << 17) | (1 << 16));

		switch (mode) {
		case OMAP_DMA_CONSTANT_FILL:
			val |= 1 << 16;
			break;
		case OMAP_DMA_TRANSPARENT_COPY:
			val |= 1 << 17;
			break;
		case OMAP_DMA_COLOR_DIS:
			break;
		default:
			FUNC0();
		}
		FUNC11(val, FUNC2(lch));

		color &= 0xffffff;
		FUNC11(color, FUNC4(lch));
	}
}