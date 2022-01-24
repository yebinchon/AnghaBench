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
struct vm_area_struct {int vm_flags; } ;
struct page {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 unsigned long DCACHE_ALIAS_MASK ; 
 int /*<<< orphan*/  PG_arch_1 ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 unsigned long TLBTEMP_BASE_1 ; 
 int VM_EXEC ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 unsigned long FUNC10 (struct page*) ; 
 struct page* FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 
 unsigned long FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC16(struct vm_area_struct * vma, unsigned long addr, pte_t pte)
{
	unsigned long pfn = FUNC13(pte);
	struct page *page;

	if (!FUNC12(pfn))
		return;

	page = FUNC11(pfn);

	/* Invalidate old entry in TLBs */

	FUNC8(addr);
	FUNC7(addr);

#if (DCACHE_WAY_SIZE > PAGE_SIZE) && XCHAL_DCACHE_IS_WRITEBACK

	if (!PageReserved(page) && test_bit(PG_arch_1, &page->flags)) {

		unsigned long vaddr = TLBTEMP_BASE_1 + (addr & DCACHE_ALIAS_MASK);
		unsigned long paddr = (unsigned long) page_address(page);
		unsigned long phys = page_to_phys(page);

		__flush_invalidate_dcache_page(paddr);

		__flush_invalidate_dcache_page_alias(vaddr, phys);
		__invalidate_icache_page_alias(vaddr, phys);

		clear_bit(PG_arch_1, &page->flags);
	}
#else
	if (!FUNC0(page) && !FUNC15(PG_arch_1, &page->flags)
	    && (vma->vm_flags & VM_EXEC) != 0) {
	    	unsigned long paddr = (unsigned long) FUNC9(page);
		FUNC1(paddr);
		FUNC4(paddr);
		FUNC14(PG_arch_1, &page->flags);
	}
#endif
}