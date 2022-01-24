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
struct TYPE_2__ {unsigned long owner; unsigned long frame; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  JAZZ_R4030_TRSTBL_INV ; 
 int VDMA_PAGESIZE ; 
 int VDMA_PGTBL_ENTRIES ; 
 TYPE_1__* pgtbl ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int vdma_debug ; 

int FUNC2(unsigned long laddr, unsigned long paddr, unsigned long size)
{
	int first, pages, npages;

	if (laddr > 0xffffff) {
		if (vdma_debug)
			FUNC0
			    ("vdma_map: Invalid logical address: %08lx\n",
			     laddr);
		return -EINVAL;	/* invalid logical address */
	}
	if (paddr > 0x1fffffff) {
		if (vdma_debug)
			FUNC0
			    ("vdma_map: Invalid physical address: %08lx\n",
			     paddr);
		return -EINVAL;	/* invalid physical address */
	}

	npages = pages =
	    (((paddr & (VDMA_PAGESIZE - 1)) + size) >> 12) + 1;
	first = laddr >> 12;
	if (vdma_debug)
		FUNC0("vdma_remap: first=%x, pages=%x\n", first, pages);
	if (first + pages > VDMA_PGTBL_ENTRIES) {
		if (vdma_debug)
			FUNC0("vdma_alloc: Invalid size: %08lx\n", size);
		return -EINVAL;
	}

	paddr &= ~(VDMA_PAGESIZE - 1);
	while (pages > 0 && first < VDMA_PGTBL_ENTRIES) {
		if (pgtbl[first].owner != laddr) {
			if (vdma_debug)
				FUNC0("Trying to remap other's pages.\n");
			return -EPERM;	/* not owner */
		}
		pgtbl[first].frame = paddr;
		paddr += VDMA_PAGESIZE;
		first++;
		pages--;
	}

	/*
	 * Update translation table
	 */
	FUNC1(JAZZ_R4030_TRSTBL_INV, 0);

	if (vdma_debug > 2) {
		int i;
		pages = (((paddr & (VDMA_PAGESIZE - 1)) + size) >> 12) + 1;
		first = laddr >> 12;
		FUNC0("LADDR: ");
		for (i = first; i < first + pages; i++)
			FUNC0("%08x ", i << 12);
		FUNC0("\nPADDR: ");
		for (i = first; i < first + pages; i++)
			FUNC0("%08x ", pgtbl[i].frame);
		FUNC0("\nOWNER: ");
		for (i = first; i < first + pages; i++)
			FUNC0("%08x ", pgtbl[i].owner);
		FUNC0("\n");
	}

	return 0;
}