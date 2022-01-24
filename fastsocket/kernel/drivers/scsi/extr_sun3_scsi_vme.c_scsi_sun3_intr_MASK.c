#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {unsigned short host_no; } ;
struct TYPE_3__ {unsigned short csr; int dma_count_lo; int dma_count_hi; int dma_addr_lo; int dma_addr_hi; int /*<<< orphan*/  fifo_count; } ;

/* Variables and functions */
 unsigned short CSR_DMA_BUSERR ; 
 unsigned short CSR_DMA_CONFLICT ; 
 unsigned short CSR_DMA_ENABLE ; 
 unsigned short CSR_DMA_INT ; 
 unsigned short CSR_GOOD ; 
 unsigned short CSR_SDB_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 
 TYPE_2__* default_instance ; 
 TYPE_1__* dregs ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned short,...) ; 
 int /*<<< orphan*/  sun3_dma_orig_addr ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dummy)
{
	unsigned short csr = dregs->csr;
	int handled = 0;

	dregs->csr &= ~CSR_DMA_ENABLE;


#ifdef SUN3_SCSI_DEBUG
	printk("scsi_intr csr %x\n", csr);
#endif

	if(csr & ~CSR_GOOD) {
		if(csr & CSR_DMA_BUSERR) {
			FUNC2("scsi%d: bus error in dma\n", default_instance->host_no);
#ifdef SUN3_SCSI_DEBUG
			printk("scsi: residual %x count %x addr %p dmaaddr %x\n", 
			       dregs->fifo_count,
			       dregs->dma_count_lo | (dregs->dma_count_hi << 16),
			       sun3_dma_orig_addr,
			       dregs->dma_addr_lo | (dregs->dma_addr_hi << 16));
#endif
		}

		if(csr & CSR_DMA_CONFLICT) {
			FUNC2("scsi%d: dma conflict\n", default_instance->host_no);
		}
		handled = 1;
	}

	if(csr & (CSR_SDB_INT | CSR_DMA_INT)) {
		FUNC1(irq, dummy);
		handled = 1;
	}

	return FUNC0(handled);
}