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
 int /*<<< orphan*/ * FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  kmap_prot ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 () ; 

void *FUNC13(struct page *page, enum km_type type)
{
	unsigned int idx;
	unsigned long vaddr;
	void *kmap;

	FUNC9();
	if (!FUNC1(page))
		return FUNC8(page);

	FUNC4(type);

	kmap = FUNC5(page);
	if (kmap)
		return kmap;

	idx = type + KM_TYPE_NR * FUNC12();
	vaddr = FUNC3(FIX_KMAP_BEGIN + idx);
#ifdef CONFIG_DEBUG_HIGHMEM
	/*
	 * With debugging enabled, kunmap_atomic forces that entry to 0.
	 * Make sure it was indeed properly unmapped.
	 */
	BUG_ON(!pte_none(*(TOP_PTE(vaddr))));
#endif
	FUNC11(FUNC2(vaddr), FUNC7(page, kmap_prot), 0);
	/*
	 * When debugging is off, kunmap_atomic leaves the previous mapping
	 * in place, so this TLB flush ensures the TLB is updated with the
	 * new mapping.
	 */
	FUNC6(vaddr);

	return (void *)vaddr;
}