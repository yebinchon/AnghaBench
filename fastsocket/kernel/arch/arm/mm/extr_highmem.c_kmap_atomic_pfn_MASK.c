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
 scalar_t__ FIX_KMAP_BEGIN ; 
 int KM_TYPE_NR ; 
 int /*<<< orphan*/ * FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  kmap_prot ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 

void *FUNC9(unsigned long pfn, enum km_type type)
{
	unsigned int idx;
	unsigned long vaddr;

	FUNC4();

	idx = type + KM_TYPE_NR * FUNC8();
	vaddr = FUNC2(FIX_KMAP_BEGIN + idx);
#ifdef CONFIG_DEBUG_HIGHMEM
	BUG_ON(!pte_none(*(TOP_PTE(vaddr))));
#endif
	FUNC7(FUNC1(vaddr), FUNC5(pfn, kmap_prot), 0);
	FUNC3(vaddr);

	return (void *)vaddr;
}