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
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  enum km_type { ____Placeholder_km_type } km_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FIX_KMAP_BEGIN ; 
 int KM_TYPE_NR ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/ * kmap_pte ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 () ; 

void *FUNC11(struct page *page, enum km_type type, pgprot_t prot)
{
	unsigned int idx;
	unsigned long vaddr;

	/* even !CONFIG_PREEMPT needs this, for in_atomic in do_page_fault */
	FUNC8();
	if (!FUNC1(page))
		return FUNC7(page);

	FUNC4(type);
	idx = type + KM_TYPE_NR*FUNC10();
	vaddr = FUNC2(FIX_KMAP_BEGIN + idx);
#ifdef CONFIG_DEBUG_HIGHMEM
	BUG_ON(!pte_none(*(kmap_pte-idx)));
#endif
	FUNC3(&init_mm, vaddr, kmap_pte-idx, FUNC6(page, prot), 1);
	FUNC5(NULL, vaddr);

	return (void*) vaddr;
}