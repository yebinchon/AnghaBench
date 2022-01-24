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
 scalar_t__ DMA_BUS_MODE ; 
 int DMA_BUS_MODE_4PBL ; 
 int DMA_BUS_MODE_DA ; 
 int DMA_BUS_MODE_PBL_SHIFT ; 
 int DMA_BUS_MODE_RPBL_SHIFT ; 
 int DMA_BUS_MODE_SFT_RESET ; 
 int DMA_INTR_DEFAULT_MASK ; 
 scalar_t__ DMA_INTR_ENA ; 
 scalar_t__ DMA_RCV_BASE_ADDR ; 
 scalar_t__ DMA_TX_BASE_ADDR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(unsigned long ioaddr, int pbl, u32 dma_tx, u32 dma_rx)
{
	u32 value = FUNC0(ioaddr + DMA_BUS_MODE);
	/* DMA SW reset */
	value |= DMA_BUS_MODE_SFT_RESET;
	FUNC1(value, ioaddr + DMA_BUS_MODE);
	do {} while ((FUNC0(ioaddr + DMA_BUS_MODE) & DMA_BUS_MODE_SFT_RESET));

	value = /* DMA_BUS_MODE_FB | */ DMA_BUS_MODE_4PBL |
	    ((pbl << DMA_BUS_MODE_PBL_SHIFT) |
	     (pbl << DMA_BUS_MODE_RPBL_SHIFT));

#ifdef CONFIG_STMMAC_DA
	value |= DMA_BUS_MODE_DA;	/* Rx has priority over tx */
#endif
	FUNC1(value, ioaddr + DMA_BUS_MODE);

	/* Mask interrupts by writing to CSR7 */
	FUNC1(DMA_INTR_DEFAULT_MASK, ioaddr + DMA_INTR_ENA);

	/* The base address of the RX/TX descriptor lists must be written into
	 * DMA CSR3 and CSR4, respectively. */
	FUNC1(dma_tx, ioaddr + DMA_TX_BASE_ADDR);
	FUNC1(dma_rx, ioaddr + DMA_RCV_BASE_ADDR);

	return 0;
}