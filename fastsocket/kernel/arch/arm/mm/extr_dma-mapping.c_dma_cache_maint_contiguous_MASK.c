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
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DMA_BIDIRECTIONAL 130 
#define  DMA_FROM_DEVICE 129 
#define  DMA_TO_DEVICE 128 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 void FUNC2 (void const*,void const*) ; 
 void FUNC3 (void const*,void const*) ; 
 void FUNC4 (void const*,void const*) ; 
 void* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 void FUNC7 (unsigned long,unsigned long) ; 
 void FUNC8 (unsigned long,unsigned long) ; 
 void FUNC9 (unsigned long,unsigned long) ; 
 void* FUNC10 (struct page*) ; 
 unsigned long FUNC11 (struct page*) ; 

__attribute__((used)) static void FUNC12(struct page *page, unsigned long offset,
				       size_t size, int direction)
{
	void *vaddr;
	unsigned long paddr;
	void (*inner_op)(const void *, const void *);
	void (*outer_op)(unsigned long, unsigned long);

	switch (direction) {
	case DMA_FROM_DEVICE:		/* invalidate only */
		inner_op = dmac_inv_range;
		outer_op = outer_inv_range;
		break;
	case DMA_TO_DEVICE:		/* writeback only */
		inner_op = dmac_clean_range;
		outer_op = outer_clean_range;
		break;
	case DMA_BIDIRECTIONAL:		/* writeback and invalidate */
		inner_op = dmac_flush_range;
		outer_op = outer_flush_range;
		break;
	default:
		FUNC0();
	}

	if (!FUNC1(page)) {
		vaddr = FUNC10(page) + offset;
		inner_op(vaddr, vaddr + size);
	} else {
		vaddr = FUNC5(page);
		if (vaddr) {
			vaddr += offset;
			inner_op(vaddr, vaddr + size);
			FUNC6(page);
		}
	}

	paddr = FUNC11(page) + offset;
	outer_op(paddr, paddr + size);
}