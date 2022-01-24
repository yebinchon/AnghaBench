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
struct page {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_COHERENT_ICACHE ; 
 int /*<<< orphan*/  CPU_FTR_NOEXECUTE ; 
 int /*<<< orphan*/  PG_arch_1 ; 
 int _PAGE_HPTEFLAGS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static pte_t FUNC9(pte_t pte, unsigned long addr)
{
	pte = FUNC0(FUNC6(pte) & ~_PAGE_HPTEFLAGS);
	if (FUNC5(pte) && !(FUNC2(CPU_FTR_COHERENT_ICACHE) ||
				       FUNC2(CPU_FTR_NOEXECUTE))) {
		struct page *pg = FUNC4(pte);
		if (!pg)
			return pte;
		if (!FUNC8(PG_arch_1, &pg->flags)) {
#ifdef CONFIG_8xx
			/* On 8xx, cache control instructions (particularly
			 * "dcbst" from flush_dcache_icache) fault as write
			 * operation if there is an unpopulated TLB entry
			 * for the address in question. To workaround that,
			 * we invalidate the TLB here, thus avoiding dcbst
			 * misbehaviour.
			 */
			/* 8xx doesn't care about PID, size or ind args */
			_tlbil_va(addr, 0, 0, 0);
#endif /* CONFIG_8xx */
			FUNC3(pg);
			FUNC7(PG_arch_1, &pg->flags);
		}
	}
	return pte;
}