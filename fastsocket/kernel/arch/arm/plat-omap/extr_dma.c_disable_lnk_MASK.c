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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  OMAP_DMA_ACTIVE ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 TYPE_1__* dma_chan ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static inline void FUNC7(int lch)
{
	u32 l;

	l = FUNC4(FUNC1(lch));

	/* Disable interrupts */
	if (FUNC2()) {
		FUNC5(0, FUNC0(lch));
		/* Set the STOP_LNK bit */
		l |= 1 << 14;
	}

	if (FUNC3()) {
		FUNC6(lch);
		/* Clear the ENABLE_LNK bit */
		l &= ~(1 << 15);
	}

	FUNC5(l, FUNC1(lch));
	dma_chan[lch].flags &= ~OMAP_DMA_ACTIVE;
}