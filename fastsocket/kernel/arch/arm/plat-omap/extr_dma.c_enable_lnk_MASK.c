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
struct TYPE_2__ {int next_lch; int next_linked_ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 TYPE_1__* dma_chan ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(int lch)
{
	u32 l;

	l = FUNC3(FUNC0(lch));

	if (FUNC1())
		l &= ~(1 << 14);

	/* Set the ENABLE_LNK bits */
	if (dma_chan[lch].next_lch != -1)
		l = dma_chan[lch].next_lch | (1 << 15);

#ifndef CONFIG_ARCH_OMAP1
	if (FUNC2())
		if (dma_chan[lch].next_linked_ch != -1)
			l = dma_chan[lch].next_linked_ch | (1 << 15);
#endif

	FUNC4(l, FUNC0(lch));
}