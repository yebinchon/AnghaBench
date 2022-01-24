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
 unsigned long FIXADDR_START ; 
 scalar_t__ FIX_KMAP_BEGIN ; 
 int KM_TYPE_NR ; 
 unsigned long PAGE_MASK ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  init_mm ; 
 scalar_t__ kmap_pte ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long,scalar_t__) ; 
 int FUNC8 () ; 

void FUNC9(void *kvaddr, enum km_type type)
{
#ifdef CONFIG_DEBUG_HIGHMEM
	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
	unsigned long idx = type + KM_TYPE_NR*smp_processor_id();

	if (vaddr < FIXADDR_START) { // FIXME
		pagefault_enable();
		return;
	}

	BUG_ON(vaddr != __fix_to_virt(FIX_KMAP_BEGIN+idx));

/* XXX Fix - Anton */
#if 0
	__flush_cache_one(vaddr);
#else
	flush_cache_all();
#endif

	/*
	 * force other mappings to Oops if they'll try to access
	 * this pte without first remap it
	 */
	pte_clear(&init_mm, vaddr, kmap_pte-idx);
/* XXX Fix - Anton */
#if 0
	__flush_tlb_one(vaddr);
#else
	flush_tlb_all();
#endif
#endif

	FUNC6();
}