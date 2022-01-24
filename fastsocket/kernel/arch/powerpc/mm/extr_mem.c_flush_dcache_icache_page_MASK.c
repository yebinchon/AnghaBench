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
 int /*<<< orphan*/  KM_PPC_SYNC_ICACHE ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 

void FUNC6(struct page *page)
{
#ifdef CONFIG_BOOKE
	void *start = kmap_atomic(page, KM_PPC_SYNC_ICACHE);
	__flush_dcache_icache(start);
	kunmap_atomic(start, KM_PPC_SYNC_ICACHE);
#elif defined(CONFIG_8xx) || defined(CONFIG_PPC64)
	/* On 8xx there is no need to kmap since highmem is not supported */
	__flush_dcache_icache(page_address(page)); 
#else
	FUNC1(FUNC5(page) << PAGE_SHIFT);
#endif

}