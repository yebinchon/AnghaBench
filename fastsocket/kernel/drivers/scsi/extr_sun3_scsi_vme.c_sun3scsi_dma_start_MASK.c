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
struct TYPE_2__ {unsigned short csr; int fifo_count; int dma_count_hi; int dma_count_lo; int fifo_count_hi; } ;

/* Variables and functions */
 TYPE_1__* dregs ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned long,unsigned short,int) ; 
 int sun3_dma_orig_count ; 

__attribute__((used)) static int FUNC1(unsigned long count, char *data)
{
	
	unsigned short csr;

	csr = dregs->csr;
#ifdef SUN3_SCSI_DEBUG
	printk("scsi: dma_start data %p count %x csr %x fifo %x\n", data, count, csr, dregs->fifo_count);
#endif
	
	dregs->dma_count_hi = (sun3_dma_orig_count >> 16);
	dregs->dma_count_lo = (sun3_dma_orig_count & 0xffff);

	dregs->fifo_count_hi = (sun3_dma_orig_count >> 16);
	dregs->fifo_count = (sun3_dma_orig_count & 0xffff);

//	if(!(csr & CSR_DMA_ENABLE))
//		dregs->csr |= CSR_DMA_ENABLE;

	return 0;
}