#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int FOLL_TOUCH ; 
 int FOLL_WRITE ; 
 unsigned long long IA64_MAX_PHYS_BITS ; 
 unsigned long KERNEL_START ; 
 unsigned long KERNEL_TR_PAGE_SIZE ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int FUNC0 (unsigned long) ; 
 unsigned long long FUNC1 (unsigned long) ; 
 unsigned long TASK_SIZE ; 
 unsigned long _PFN_MASK ; 
 unsigned long FUNC2 (unsigned long) ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 struct page* FUNC4 (struct vm_area_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 unsigned long kernel_virtual_offset ; 
 unsigned long FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned long
FUNC18(unsigned long vaddr)
{
	struct page *page;
	struct vm_area_struct *vma;

	if (vaddr == 0)
		return 0UL;

	if (FUNC0(vaddr) == 5) {
		pgd_t *pgd;
		pud_t *pud;
		pmd_t *pmd;
		pte_t *ptep;

		/* On ia64, TASK_SIZE refers to current.  It is not initialized
		   during boot.
		   Furthermore the kernel is relocatable and __pa() doesn't
		   work on  addresses.  */
		if (vaddr >= KERNEL_START
		    && vaddr < (KERNEL_START + KERNEL_TR_PAGE_SIZE))
			return vaddr - kernel_virtual_offset;

		/* In kernel area -- virtually mapped.  */
		pgd = FUNC9(vaddr);
		if (FUNC8(*pgd) || FUNC7(*pgd))
			return ~0UL;

		pud = FUNC17(pgd, vaddr);
		if (FUNC16(*pud) || FUNC15(*pud))
			return ~0UL;

		pmd = FUNC12(pud, vaddr);
		if (FUNC11(*pmd) || FUNC10(*pmd))
			return ~0UL;

		ptep = FUNC13(pmd, vaddr);
		if (!ptep)
			return ~0UL;

		return (FUNC14(*ptep) & _PFN_MASK) | (vaddr & ~PAGE_MASK);
	}

	if (vaddr > TASK_SIZE) {
		/* percpu variables */
		if (FUNC0(vaddr) == 7 &&
		    FUNC1(vaddr) >= (1ULL << IA64_MAX_PHYS_BITS))
			FUNC5(vaddr);

		/* kernel address */
		return FUNC2(vaddr);
	}

	/* XXX double-check (lack of) locking */
	vma = FUNC3(current->mm, vaddr);
	if (!vma)
		return ~0UL;

	/* We assume the page is modified.  */
	page = FUNC4(vma, vaddr, FOLL_WRITE | FOLL_TOUCH);
	if (!page)
		return ~0UL;

	return (FUNC6(page) << PAGE_SHIFT) | (vaddr & ~PAGE_MASK);
}