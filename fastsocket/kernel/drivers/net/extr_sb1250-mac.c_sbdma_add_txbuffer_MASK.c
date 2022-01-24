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
typedef  int uint64_t ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct sbmacdma {int /*<<< orphan*/  sbdma_dscrcnt; struct sbdmadscr* sbdma_addptr; struct sbdmadscr* sbdma_dscrtable; struct sk_buff** sbdma_ctxtable; struct sbdmadscr* sbdma_remptr; } ;
struct sbdmadscr {int dscr_a; int dscr_b; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  K_DMA_ETHTX_APPENDCRC_APPENDPAD ; 
 int M_DMA_DSCRA_INTERRUPT ; 
 int M_DMA_ETHTX_SOP ; 
 int FUNC0 (int) ; 
 struct sbdmadscr* FUNC1 (struct sbmacdma*,int /*<<< orphan*/ ) ; 
 int SMP_CACHE_BYTES ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sbdma_addptr ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sbmacdma *d, struct sk_buff *sb)
{
	struct sbdmadscr *dsc;
	struct sbdmadscr *nextdsc;
	uint64_t phys;
	uint64_t ncb;
	int length;

	/* get pointer to our current place in the ring */

	dsc = d->sbdma_addptr;
	nextdsc = FUNC1(d,sbdma_addptr);

	/*
	 * figure out if the ring is full - if the next descriptor
	 * is the same as the one that we're going to remove from
	 * the ring, the ring is full
	 */

	if (nextdsc == d->sbdma_remptr) {
		return -ENOSPC;
	}

	/*
	 * Under Linux, it's not necessary to copy/coalesce buffers
	 * like it is on NetBSD.  We think they're all contiguous,
	 * but that may not be true for GBE.
	 */

	length = sb->len;

	/*
	 * fill in the descriptor.  Note that the number of cache
	 * blocks in the descriptor is the number of blocks
	 * *spanned*, so we need to add in the offset (if any)
	 * while doing the calculation.
	 */

	phys = FUNC6(sb->data);
	ncb = FUNC0(length+(phys & (SMP_CACHE_BYTES - 1)));

	dsc->dscr_a = phys |
		FUNC2(ncb) |
#ifndef CONFIG_SBMAC_COALESCE
		M_DMA_DSCRA_INTERRUPT |
#endif
		M_DMA_ETHTX_SOP;

	/* transmitting: set outbound options and length */

	dsc->dscr_b = FUNC3(K_DMA_ETHTX_APPENDCRC_APPENDPAD) |
		FUNC4(length);

	/*
	 * fill in the context
	 */

	d->sbdma_ctxtable[dsc-d->sbdma_dscrtable] = sb;

	/*
	 * point at next packet
	 */

	d->sbdma_addptr = nextdsc;

	/*
	 * Give the buffer to the DMA engine.
	 */

	FUNC5(1, d->sbdma_dscrcnt);

	return 0;					/* we did it */
}