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
typedef  enum omap_dma_channel_mode { ____Placeholder_omap_dma_channel_mode } omap_dma_channel_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

void FUNC5(int lch, enum omap_dma_channel_mode mode)
{
	if (FUNC1() && !FUNC2()) {
		u32 l;

		l = FUNC3(FUNC0(lch));
		l &= ~0x7;
		l |= mode;
		FUNC4(l, FUNC0(lch));
	}
}