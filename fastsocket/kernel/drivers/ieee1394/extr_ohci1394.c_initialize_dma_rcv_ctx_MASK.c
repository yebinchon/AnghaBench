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
struct ti_ohci {int dummy; } ;
struct dma_rcv_ctx {int num_desc; int buf_size; int* prg_bus; int* buf_bus; scalar_t__ type; int ctx; int /*<<< orphan*/  ctrlSet; int /*<<< orphan*/  cmdPtr; int /*<<< orphan*/  ctxtMatch; int /*<<< orphan*/  ctrlClear; scalar_t__ buf_offset; scalar_t__ buf_ind; TYPE_1__** prg_cpu; scalar_t__ ohci; } ;
struct TYPE_2__ {void* status; void* address; void* branchAddress; void* control; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int DMA_CTL_BRANCH ; 
 int DMA_CTL_INPUT_MORE ; 
 int DMA_CTL_IRQ ; 
 int DMA_CTL_UPDATE ; 
 scalar_t__ DMA_CTX_ISO ; 
 int /*<<< orphan*/  OHCI1394_IRMultiChanMaskHiClear ; 
 int /*<<< orphan*/  OHCI1394_IRMultiChanMaskLoClear ; 
 int /*<<< orphan*/  OHCI1394_IsoRecvIntMaskSet ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_ohci*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ti_ohci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct dma_rcv_ctx *d, int generate_irq)
{
	struct ti_ohci *ohci = (struct ti_ohci*)(d->ohci);
	int i;

	FUNC2(ohci, d->ctrlClear, NULL);

	for (i=0; i<d->num_desc; i++) {
		u32 c;

		c = DMA_CTL_INPUT_MORE | DMA_CTL_UPDATE | DMA_CTL_BRANCH;
		if (generate_irq)
			c |= DMA_CTL_IRQ;

		d->prg_cpu[i]->control = FUNC1(c | d->buf_size);

		/* End of descriptor list? */
		if (i + 1 < d->num_desc) {
			d->prg_cpu[i]->branchAddress =
				FUNC1((d->prg_bus[i+1] & 0xfffffff0) | 0x1);
		} else {
			d->prg_cpu[i]->branchAddress =
				FUNC1((d->prg_bus[0] & 0xfffffff0));
		}

		d->prg_cpu[i]->address = FUNC1(d->buf_bus[i]);
		d->prg_cpu[i]->status = FUNC1(d->buf_size);
	}

        d->buf_ind = 0;
        d->buf_offset = 0;

	if (d->type == DMA_CTX_ISO) {
		/* Clear contextControl */
		FUNC3(ohci, d->ctrlClear, 0xffffffff);

		/* Set bufferFill, isochHeader, multichannel for IR context */
		FUNC3(ohci, d->ctrlSet, 0xd0000000);

		/* Set the context match register to match on all tags */
		FUNC3(ohci, d->ctxtMatch, 0xf0000000);

		/* Clear the multi channel mask high and low registers */
		FUNC3(ohci, OHCI1394_IRMultiChanMaskHiClear, 0xffffffff);
		FUNC3(ohci, OHCI1394_IRMultiChanMaskLoClear, 0xffffffff);

		/* Set up isoRecvIntMask to generate interrupts */
		FUNC3(ohci, OHCI1394_IsoRecvIntMaskSet, 1 << d->ctx);
	}

	/* Tell the controller where the first AR program is */
	FUNC3(ohci, d->cmdPtr, d->prg_bus[0] | 0x1);

	/* Run context */
	FUNC3(ohci, d->ctrlSet, 0x00008000);

	FUNC0("Receive DMA ctx=%d initialized", d->ctx);
}