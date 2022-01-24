#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int csr; unsigned short fifo_count; unsigned short fifo_data; } ;
struct TYPE_4__ {int host_no; } ;

/* Variables and functions */
 int BASR_ACK ; 
 int BASR_PHASE_MATCH ; 
 int /*<<< orphan*/  BUS_AND_STATUS_REG ; 
 int CSR_FIFO ; 
 int CSR_FIFO_EMPTY ; 
 int CSR_SEND ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDC_CSR ; 
 int /*<<< orphan*/  UDC_RESET ; 
 TYPE_1__* default_instance ; 
 int /*<<< orphan*/  dmabuf ; 
 TYPE_2__* dregs ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned short last_residual ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ sun3_dma_active ; 
 int /*<<< orphan*/ * sun3_dma_orig_addr ; 
 unsigned short sun3_dma_orig_count ; 
 int /*<<< orphan*/ * sun3_dma_setup_done ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned short FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(int write_flag)
{
	unsigned short count;
	unsigned short fifo;
	int ret = 0;
	
	sun3_dma_active = 0;
#if 1
	// check to empty the fifo on a read
	if(!write_flag) {
		int tmo = 20000; /* .2 sec */
		
		while(1) {
			if(dregs->csr & CSR_FIFO_EMPTY)
				break;

			if(--tmo <= 0) {
				FUNC4("sun3scsi: fifo failed to empty!\n");
				return 1;
			}
			FUNC7(10);
		}
	}
		
#endif

	count = FUNC6(default_instance);
#ifdef OLDDMA

	/* if we've finished a read, copy out the data we read */
 	if(sun3_dma_orig_addr) {
		/* check for residual bytes after dma end */
		if(count && (NCR5380_read(BUS_AND_STATUS_REG) &
			     (BASR_PHASE_MATCH | BASR_ACK))) {
			printk("scsi%d: sun3_scsi_finish: read overrun baby... ", default_instance->host_no);
			printk("basr now %02x\n", NCR5380_read(BUS_AND_STATUS_REG));
			ret = count;
		}
		
		/* copy in what we dma'd no matter what */
		memcpy(sun3_dma_orig_addr, dmabuf, sun3_dma_orig_count);
		sun3_dma_orig_addr = NULL;

	}
#else

	fifo = dregs->fifo_count;
	last_residual = fifo;

	/* empty bytes from the fifo which didn't make it */
	if((!write_flag) && (count - fifo) == 2) {
		unsigned short data;
		unsigned char *vaddr;

		data = dregs->fifo_data;
		vaddr = (unsigned char *)FUNC1(sun3_dma_orig_addr);
		
		vaddr += (sun3_dma_orig_count - fifo);

		vaddr[-2] = (data & 0xff00) >> 8;
		vaddr[-1] = (data & 0xff);
	}

	FUNC2(sun3_dma_orig_addr);
	sun3_dma_orig_addr = NULL;
#endif
	FUNC5(UDC_RESET, UDC_CSR);
	dregs->fifo_count = 0;
	dregs->csr &= ~CSR_SEND;

	/* reset fifo */
	dregs->csr &= ~CSR_FIFO;
	dregs->csr |= CSR_FIFO;
	
	sun3_dma_setup_done = NULL;

	return ret;

}