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
 int FIX_KMAP_BEGIN ; 
 int KM_TYPE_NR ; 
 unsigned long PAGE_MASK ; 
 unsigned long FUNC0 (int) ; 
 int kmap_pte ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 

void
FUNC4(void *kvaddr, enum km_type type)
{
	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
	enum fixed_addresses idx = type + KM_TYPE_NR*FUNC3();

	/*
	 * Force other mappings to Oops if they'll try to access this pte
	 * without first remap it.  Keeping stale mappings around is a bad idea
	 * also, in case the page changes cacheability attributes or becomes
	 * a protected page in a hypervisor.
	 */
	if (vaddr == FUNC0(FIX_KMAP_BEGIN+idx))
		FUNC1(kmap_pte-idx, vaddr);

	FUNC2();
}