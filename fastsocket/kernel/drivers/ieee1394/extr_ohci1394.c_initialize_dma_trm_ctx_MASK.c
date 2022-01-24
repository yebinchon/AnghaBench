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
struct ti_ohci {int dummy; } ;
struct dma_trm_ctx {scalar_t__ type; int ctx; int /*<<< orphan*/  pending_list; int /*<<< orphan*/  fifo_list; int /*<<< orphan*/ * branchAddrPtr; int /*<<< orphan*/  num_desc; int /*<<< orphan*/  free_prgs; scalar_t__ sent_ind; scalar_t__ prg_ind; int /*<<< orphan*/  ctrlClear; scalar_t__ ohci; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ DMA_CTX_ISO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OHCI1394_IsoXmitIntMaskSet ; 
 int /*<<< orphan*/  FUNC2 (struct ti_ohci*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ti_ohci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct dma_trm_ctx *d)
{
	struct ti_ohci *ohci = (struct ti_ohci*)(d->ohci);

	/* Stop the context */
	FUNC2(ohci, d->ctrlClear, NULL);

        d->prg_ind = 0;
	d->sent_ind = 0;
	d->free_prgs = d->num_desc;
        d->branchAddrPtr = NULL;
	FUNC1(&d->fifo_list);
	FUNC1(&d->pending_list);

	if (d->type == DMA_CTX_ISO) {
		/* enable interrupts */
		FUNC3(ohci, OHCI1394_IsoXmitIntMaskSet, 1 << d->ctx);
	}

	FUNC0("Transmit DMA ctx=%d initialized", d->ctx);
}