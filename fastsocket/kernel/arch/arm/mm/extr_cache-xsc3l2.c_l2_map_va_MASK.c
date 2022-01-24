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

/* Variables and functions */
 scalar_t__ FIX_KMAP_BEGIN ; 
 unsigned long KM_L2_CACHE ; 
 unsigned long KM_TYPE_NR ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 unsigned long PAGE_MASK ; 
 int PAGE_SHIFT ; 
 unsigned long PSR_I_BIT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 () ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static inline unsigned long FUNC9(unsigned long pa, unsigned long prev_va,
				      unsigned long flags)
{
#ifdef CONFIG_HIGHMEM
	unsigned long va = prev_va & PAGE_MASK;
	unsigned long pa_offset = pa << (32 - PAGE_SHIFT);
	if (unlikely(pa_offset < (prev_va << (32 - PAGE_SHIFT)))) {
		/*
		 * Switching to a new page.  Because cache ops are
		 * using virtual addresses only, we must put a mapping
		 * in place for it.  We also enable interrupts for a
		 * short while and disable them again to protect this
		 * mapping.
		 */
		unsigned long idx;
		raw_local_irq_restore(flags);
		idx = KM_L2_CACHE + KM_TYPE_NR * smp_processor_id();
		va = __fix_to_virt(FIX_KMAP_BEGIN + idx);
		raw_local_irq_restore(flags | PSR_I_BIT);
		set_pte_ext(TOP_PTE(va), pfn_pte(pa >> PAGE_SHIFT, PAGE_KERNEL), 0);
		local_flush_tlb_kernel_page(va);
	}
	return va + (pa_offset >> (32 - PAGE_SHIFT));
#else
	return FUNC2(pa);
#endif
}