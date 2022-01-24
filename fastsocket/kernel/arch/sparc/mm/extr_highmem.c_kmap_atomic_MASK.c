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
typedef  enum km_type { ____Placeholder_km_type } km_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FIX_KMAP_BEGIN ; 
 int KM_TYPE_NR ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  kmap_prot ; 
 int /*<<< orphan*/ * kmap_pte ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 () ; 

void *FUNC14(struct page *page, enum km_type type)
{
	unsigned long idx;
	unsigned long vaddr;

	/* even !CONFIG_PREEMPT needs this, for in_atomic in do_page_fault */
	FUNC10();
	if (!FUNC1(page))
		return FUNC9(page);

	FUNC5(type);
	idx = type + KM_TYPE_NR*FUNC13();
	vaddr = FUNC2(FIX_KMAP_BEGIN + idx);

/* XXX Fix - Anton */
#if 0
	__flush_cache_one(vaddr);
#else
	FUNC6();
#endif

#ifdef CONFIG_DEBUG_HIGHMEM
	BUG_ON(!pte_none(*(kmap_pte-idx)));
#endif
	FUNC12(kmap_pte-idx, FUNC8(page, kmap_prot));
/* XXX Fix - Anton */
#if 0
	__flush_tlb_one(vaddr);
#else
	FUNC7();
#endif

	return (void*) vaddr;
}