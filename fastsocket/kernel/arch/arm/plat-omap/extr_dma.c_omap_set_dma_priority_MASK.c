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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  OMAP_DMA_PORT_EMIFF 131 
#define  OMAP_DMA_PORT_EMIFS 130 
#define  OMAP_DMA_PORT_OCP_T1 129 
#define  OMAP_DMA_PORT_OCP_T2 128 
 unsigned long OMAP_TC_EMIFF_PRIOR ; 
 unsigned long OMAP_TC_EMIFS_PRIOR ; 
 unsigned long OMAP_TC_OCPT1_PRIOR ; 
 unsigned long OMAP_TC_OCPT2_PRIOR ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned long) ; 

void FUNC8(int lch, int dst_port, int priority)
{
	unsigned long reg;
	u32 l;

	if (FUNC2()) {
		switch (dst_port) {
		case OMAP_DMA_PORT_OCP_T1:	/* FFFECC00 */
			reg = OMAP_TC_OCPT1_PRIOR;
			break;
		case OMAP_DMA_PORT_OCP_T2:	/* FFFECCD0 */
			reg = OMAP_TC_OCPT2_PRIOR;
			break;
		case OMAP_DMA_PORT_EMIFF:	/* FFFECC08 */
			reg = OMAP_TC_EMIFF_PRIOR;
			break;
		case OMAP_DMA_PORT_EMIFS:	/* FFFECC04 */
			reg = OMAP_TC_EMIFS_PRIOR;
			break;
		default:
			FUNC0();
			return;
		}
		l = FUNC6(reg);
		l &= ~(0xf << 8);
		l |= (priority & 0xf) << 8;
		FUNC7(l, reg);
	}

	if (FUNC3()) {
		u32 ccr;

		ccr = FUNC4(FUNC1(lch));
		if (priority)
			ccr |= (1 << 6);
		else
			ccr &= ~(1 << 6);
		FUNC5(ccr, FUNC1(lch));
	}
}