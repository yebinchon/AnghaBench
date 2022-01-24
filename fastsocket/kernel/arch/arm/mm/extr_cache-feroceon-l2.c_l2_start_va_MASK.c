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
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 () ; 

__attribute__((used)) static inline unsigned long FUNC7(unsigned long paddr)
{
#ifdef CONFIG_HIGHMEM
	/*
	 * Let's do our own fixmap stuff in a minimal way here.
	 * Because range ops can't be done on physical addresses,
	 * we simply install a virtual mapping for it only for the
	 * TLB lookup to occur, hence no need to flush the untouched
	 * memory mapping.  This is protected with the disabling of
	 * interrupts by the caller.
	 */
	unsigned long idx = KM_L2_CACHE + KM_TYPE_NR * smp_processor_id();
	unsigned long vaddr = __fix_to_virt(FIX_KMAP_BEGIN + idx);
	set_pte_ext(TOP_PTE(vaddr), pfn_pte(paddr >> PAGE_SHIFT, PAGE_KERNEL), 0);
	local_flush_tlb_kernel_page(vaddr);
	return vaddr + (paddr & ~PAGE_MASK);
#else
	return FUNC2(paddr);
#endif
}