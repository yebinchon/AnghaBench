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
typedef  enum km_type { ____Placeholder_km_type } km_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FIXADDR_START ; 
 scalar_t__ FIX_KMAP_BEGIN ; 
 int KM_TYPE_NR ; 
 int /*<<< orphan*/  LAST_PKMAP ; 
 unsigned long PAGE_MASK ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 unsigned long FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * pkmap_page_table ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 () ; 

void FUNC13(void *kvaddr, enum km_type type)
{
	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
	unsigned int idx = type + KM_TYPE_NR * FUNC12();

	if (kvaddr >= (void *)FIXADDR_START) {
		FUNC4((void *)vaddr);
#ifdef CONFIG_DEBUG_HIGHMEM
		BUG_ON(vaddr != __fix_to_virt(FIX_KMAP_BEGIN + idx));
		set_pte_ext(TOP_PTE(vaddr), __pte(0), 0);
		local_flush_tlb_kernel_page(vaddr);
#else
		(void) idx;  /* to kill a warning */
#endif
	} else if (vaddr >= FUNC1(0) && vaddr < FUNC1(LAST_PKMAP)) {
		/* this address was obtained through kmap_high_get() */
		FUNC7(FUNC10(pkmap_page_table[FUNC2(vaddr)]));
	}
	FUNC9();
}