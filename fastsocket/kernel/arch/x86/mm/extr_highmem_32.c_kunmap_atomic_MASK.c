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
typedef  enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FIX_KMAP_BEGIN ; 
 int KM_TYPE_NR ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_OFFSET ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ high_memory ; 
 int kmap_pte ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 

void FUNC6(void *kvaddr, enum km_type type)
{
	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
	enum fixed_addresses idx = type + KM_TYPE_NR*FUNC5();

	/*
	 * Force other mappings to Oops if they'll try to access this pte
	 * without first remap it.  Keeping stale mappings around is a bad idea
	 * also, in case the page changes cacheability attributes or becomes
	 * a protected page in a hypervisor.
	 */
	if (vaddr == FUNC1(FIX_KMAP_BEGIN+idx)) {
		FUNC3(kmap_pte-idx, vaddr);
		FUNC2();
	} else {
#ifdef CONFIG_DEBUG_HIGHMEM
		BUG_ON(vaddr < PAGE_OFFSET);
		BUG_ON(vaddr >= (unsigned long)high_memory);
#endif
	}

	FUNC4();
}