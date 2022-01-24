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
struct TYPE_2__ {int /*<<< orphan*/  enabled_irqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  OMAP2_DMA_CSR_CLEAR_MASK ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 TYPE_1__* dma_chan ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(int lch)
{
	u32 status;

	/* Clear CSR */
	if (FUNC2())
		status = FUNC4(FUNC1(lch));
	else if (FUNC3())
		FUNC5(OMAP2_DMA_CSR_CLEAR_MASK, FUNC1(lch));

	/* Enable some nice interrupts. */
	FUNC5(dma_chan[lch].enabled_irqs, FUNC0(lch));
}