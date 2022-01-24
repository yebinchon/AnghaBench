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
struct mite_struct {scalar_t__ mite_io_addr; } ;
struct mite_channel {scalar_t__ dir; int /*<<< orphan*/  channel; TYPE_1__* ring; struct mite_struct* mite; } ;
struct TYPE_2__ {unsigned int descriptors_dma_addr; } ;

/* Variables and functions */
 unsigned int CHCR_BURSTEN ; 
 unsigned int CHCR_BYTE_SWAP_DEVICE ; 
 unsigned int CHCR_BYTE_SWAP_MEMORY ; 
 unsigned int CHCR_DEV_TO_MEM ; 
 unsigned int CHCR_LINKSHORT ; 
 unsigned int CHCR_SET_DMA_IE ; 
 unsigned int CHCR_SET_DONE_IE ; 
 unsigned int CHCR_SET_LC_IE ; 
 unsigned int CHOR_DMARESET ; 
 unsigned int CHOR_FRESET ; 
 scalar_t__ COMEDI_INPUT ; 
 unsigned int CR_AMDEVICE ; 
 unsigned int CR_ASEQUP ; 
 unsigned int CR_PORTIO ; 
 unsigned int CR_PSIZE16 ; 
 unsigned int CR_PSIZE32 ; 
 unsigned int CR_PSIZE8 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,scalar_t__) ; 

void FUNC12(struct mite_channel *mite_chan,
		   unsigned int num_device_bits, unsigned int num_memory_bits)
{
	unsigned int chor, chcr, mcr, dcr, lkcr;
	struct mite_struct *mite = mite_chan->mite;

	FUNC2("mite_prep_dma ch%i\n", mite_chan->channel);

	/* reset DMA and FIFO */
	chor = CHOR_DMARESET | CHOR_FRESET;
	FUNC11(chor, mite->mite_io_addr + FUNC4(mite_chan->channel));

	/* short link chaining mode */
	chcr = CHCR_SET_DMA_IE | CHCR_LINKSHORT | CHCR_SET_DONE_IE |
	    CHCR_BURSTEN;
	/*
	 * Link Complete Interrupt: interrupt every time a link
	 * in MITE_RING is completed. This can generate a lot of
	 * extra interrupts, but right now we update the values
	 * of buf_int_ptr and buf_int_count at each interrupt.  A
	 * better method is to poll the MITE before each user
	 * "read()" to calculate the number of bytes available.
	 */
	chcr |= CHCR_SET_LC_IE;
	if (num_memory_bits == 32 && num_device_bits == 16) {
		/* Doing a combined 32 and 16 bit byteswap gets the 16 bit samples into the fifo in the right order.
		   Tested doing 32 bit memory to 16 bit device transfers to the analog out of a pxi-6281,
		   which has mite version = 1, type = 4.  This also works for dma reads from the counters
		   on e-series boards.  */
		chcr |= CHCR_BYTE_SWAP_DEVICE | CHCR_BYTE_SWAP_MEMORY;
	}
	if (mite_chan->dir == COMEDI_INPUT)
		chcr |= CHCR_DEV_TO_MEM;

	FUNC11(chcr, mite->mite_io_addr + FUNC3(mite_chan->channel));

	/* to/from memory */
	mcr = FUNC1(64) | CR_ASEQUP;
	switch (num_memory_bits) {
	case 8:
		mcr |= CR_PSIZE8;
		break;
	case 16:
		mcr |= CR_PSIZE16;
		break;
	case 32:
		mcr |= CR_PSIZE32;
		break;
	default:
		FUNC10("mite: bug! invalid mem bit width for dma transfer\n");
		break;
	}
	FUNC11(mcr, mite->mite_io_addr + FUNC9(mite_chan->channel));

	/* from/to device */
	dcr = FUNC1(64) | CR_ASEQUP;
	dcr |= CR_PORTIO | CR_AMDEVICE | FUNC0(mite_chan->channel);
	switch (num_device_bits) {
	case 8:
		dcr |= CR_PSIZE8;
		break;
	case 16:
		dcr |= CR_PSIZE16;
		break;
	case 32:
		dcr |= CR_PSIZE32;
		break;
	default:
		FUNC10("mite: bug! invalid dev bit width for dma transfer\n");
		break;
	}
	FUNC11(dcr, mite->mite_io_addr + FUNC6(mite_chan->channel));

	/* reset the DAR */
	FUNC11(0, mite->mite_io_addr + FUNC5(mite_chan->channel));

	/* the link is 32bits */
	lkcr = FUNC1(64) | CR_ASEQUP | CR_PSIZE32;
	FUNC11(lkcr, mite->mite_io_addr + FUNC8(mite_chan->channel));

	/* starting address for link chaining */
	FUNC11(mite_chan->ring->descriptors_dma_addr,
	       mite->mite_io_addr + FUNC7(mite_chan->channel));

	FUNC2("exit mite_prep_dma\n");
}