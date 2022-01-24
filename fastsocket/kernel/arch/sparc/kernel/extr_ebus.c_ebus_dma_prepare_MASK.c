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
struct ebus_dma_info {int flags; int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ EBDMA_CSR ; 
 int EBDMA_CSR_BURST_SZ_16 ; 
 int EBDMA_CSR_EN_CNT ; 
 int EBDMA_CSR_EN_NEXT ; 
 int EBDMA_CSR_INT_EN ; 
 int EBDMA_CSR_TCI_DIS ; 
 int EBDMA_CSR_WRITE ; 
 int EBUS_DMA_FLAG_TCI_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ebus_dma_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

void FUNC4(struct ebus_dma_info *p, int write)
{
	unsigned long flags;
	u32 csr;

	FUNC1(&p->lock, flags);
	FUNC0(p, 0);

	csr = (EBDMA_CSR_INT_EN |
	       EBDMA_CSR_EN_CNT |
	       EBDMA_CSR_BURST_SZ_16 |
	       EBDMA_CSR_EN_NEXT);

	if (write)
		csr |= EBDMA_CSR_WRITE;
	if (p->flags & EBUS_DMA_FLAG_TCI_DISABLE)
		csr |= EBDMA_CSR_TCI_DIS;

	FUNC3(csr, p->regs + EBDMA_CSR);

	FUNC2(&p->lock, flags);
}