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
struct lance_private {int burst_sizes; scalar_t__ dregs; scalar_t__ tpe; } ;

/* Variables and functions */
 int DMA_BURST32 ; 
 scalar_t__ DMA_CSR ; 
 int DMA_DSBL_RD_DRN ; 
 int DMA_DSBL_WR_INV ; 
 int DMA_EN_ENETAUI ; 
 int DMA_E_BURST16 ; 
 int DMA_E_BURST32 ; 
 int DMA_E_BURSTS ; 
 int DMA_FIFO_INV ; 
 int DMA_FIFO_ISDRAIN ; 
 int DMA_HNDL_ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct lance_private *lp)
{
	u32 csr = FUNC1(lp->dregs + DMA_CSR);

	if (!(csr & DMA_HNDL_ERROR)) {
		/* E-Cache draining */
		while (FUNC1(lp->dregs + DMA_CSR) & DMA_FIFO_ISDRAIN)
			FUNC0();
	}

	csr = FUNC1(lp->dregs + DMA_CSR);
	csr &= ~DMA_E_BURSTS;
	if (lp->burst_sizes & DMA_BURST32)
		csr |= DMA_E_BURST32;
	else
		csr |= DMA_E_BURST16;

	csr |= (DMA_DSBL_RD_DRN | DMA_DSBL_WR_INV | DMA_FIFO_INV);

	if (lp->tpe)
		csr |= DMA_EN_ENETAUI;
	else
		csr &= ~DMA_EN_ENETAUI;
	FUNC3(20);
	FUNC2(csr, lp->dregs + DMA_CSR);
	FUNC3(200);
}