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
typedef  int u16 ;
struct ti_ohci {int dummy; } ;
struct ohci_iso_recv {int nblocks; size_t block_dma; int buf_stride; int block_reader; struct dma_cmd* block; struct ti_ohci* ohci; } ;
struct hpsb_iso {int /*<<< orphan*/  overflows; int /*<<< orphan*/  data_buf; } ;
struct dma_cmd {int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct hpsb_iso*,struct ohci_iso_recv*) ; 

__attribute__((used)) static void FUNC6(struct hpsb_iso *iso, struct ohci_iso_recv *recv)
{
	int loop;
	struct ti_ohci *ohci = recv->ohci;

	/* loop over all blocks */
	for (loop = 0; loop < recv->nblocks; loop++) {

		/* check block_dma to see if it's done */
		struct dma_cmd *im = &recv->block[recv->block_dma];

		/* check the DMA descriptor for new writes to xferStatus */
		u16 xferstatus = FUNC4(im->status) >> 16;

		/* rescount is the number of bytes *remaining to be written* in the block */
		u16 rescount = FUNC4(im->status) & 0xFFFF;

		unsigned char event = xferstatus & 0x1F;

		if (!event) {
			/* nothing has happened to this block yet */
			break;
		}

		if (event != 0x11) {
			FUNC2(&iso->overflows);
			FUNC1(KERN_ERR,
			      "IR DMA error - OHCI error code 0x%02x\n", event);
		}

		if (rescount != 0) {
			/* the card is still writing to this block;
			   we can't touch it until it's done */
			break;
		}

		/* OK, the block is finished... */

		/* sync our view of the block */
		FUNC3(&iso->data_buf, recv->block_dma*recv->buf_stride, recv->buf_stride);

		/* reset the DMA descriptor */
		im->status = recv->buf_stride;

		/* advance block_dma */
		recv->block_dma = (recv->block_dma + 1) % recv->nblocks;

		if ((recv->block_dma+1) % recv->nblocks == recv->block_reader) {
			FUNC2(&iso->overflows);
			FUNC0("ISO reception overflow - "
			       "ran out of DMA blocks");
		}
	}

	/* parse any packets that have arrived */
	FUNC5(iso, recv);
}