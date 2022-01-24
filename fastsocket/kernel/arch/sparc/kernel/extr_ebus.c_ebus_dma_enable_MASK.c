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
struct ebus_dma_info {int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ EBDMA_CSR ; 
 int EBDMA_CSR_EN_DMA ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

void FUNC4(struct ebus_dma_info *p, int on)
{
	unsigned long flags;
	u32 orig_csr, csr;

	FUNC1(&p->lock, flags);
	orig_csr = csr = FUNC0(p->regs + EBDMA_CSR);
	if (on)
		csr |= EBDMA_CSR_EN_DMA;
	else
		csr &= ~EBDMA_CSR_EN_DMA;
	if ((orig_csr & EBDMA_CSR_EN_DMA) !=
	    (csr & EBDMA_CSR_EN_DMA))
		FUNC3(csr, p->regs + EBDMA_CSR);
	FUNC2(&p->lock, flags);
}