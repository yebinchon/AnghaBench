#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {scalar_t__ vm_mm; } ;
typedef  int /*<<< orphan*/  pud_t ;
struct TYPE_6__ {int pte_high; } ;
typedef  TYPE_1__ pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_7__ {scalar_t__ active_mm; } ;

/* Variables and functions */
 int ASID_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 int HPAGE_SIZE ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  PM_DEFAULT_MASK ; 
 int /*<<< orphan*/  PM_HUGE_MASK ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (TYPE_1__) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC10 () ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

void FUNC21(struct vm_area_struct * vma, unsigned long address, pte_t pte)
{
	unsigned long flags;
	pgd_t *pgdp;
	pud_t *pudp;
	pmd_t *pmdp;
	pte_t *ptep;
	int idx, pid;

	/*
	 * Handle debugger faulting in for debugee.
	 */
	if (current->active_mm != vma->vm_mm)
		return;

	FUNC0(flags);

	pid = FUNC10() & ASID_MASK;
	address &= (PAGE_MASK << 1);
	FUNC17(address | pid);
	pgdp = FUNC4(vma->vm_mm, address);
	FUNC3();
	FUNC12();
	FUNC13();
	pudp = FUNC9(pgdp, address);
	pmdp = FUNC6(pudp, address);
	idx = FUNC11();
#ifdef CONFIG_HUGETLB_PAGE
	/* this could be a huge page  */
	if (pmd_huge(*pmdp)) {
		unsigned long lo;
		write_c0_pagemask(PM_HUGE_MASK);
		ptep = (pte_t *)pmdp;
		lo = pte_val(*ptep) >> 6;
		write_c0_entrylo0(lo);
		write_c0_entrylo1(lo + (HPAGE_SIZE >> 7));

		mtc0_tlbw_hazard();
		if (idx < 0)
			tlb_write_random();
		else
			tlb_write_indexed();
		write_c0_pagemask(PM_DEFAULT_MASK);
	} else
#endif
	{
		ptep = FUNC7(pmdp, address);

#if defined(CONFIG_64BIT_PHYS_ADDR) && defined(CONFIG_CPU_MIPS32)
		write_c0_entrylo0(ptep->pte_high);
		ptep++;
		write_c0_entrylo1(ptep->pte_high);
#else
		FUNC18(FUNC8(*ptep++) >> 6);
		FUNC19(FUNC8(*ptep) >> 6);
#endif
		FUNC3();
		if (idx < 0)
			FUNC15();
		else
			FUNC14();
	}
	FUNC16();
	FUNC2(vma);
	FUNC1(flags);
}