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
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 scalar_t__ TASK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct mm_struct *mm,
			  unsigned long long protection_flags,
			  unsigned long long textaccess,
			  unsigned long address)
{
	pgd_t *dir;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;
	pte_t entry;

	/* NB. The PGD currently only contains a single entry - there is no
	   page table tree stored for the top half of the address space since
	   virtual pages in that region should never be mapped in user mode.
	   (In kernel mode, the only things in that region are the 512Mb super
	   page (locked in), and vmalloc (modules) +  I/O device pages (handled
	   by handle_vmalloc_fault), so no PGD for the upper half is required
	   by kernel mode either).

	   See how mm->pgd is allocated and initialised in pgd_alloc to see why
	   the next test is necessary.  - RPC */
	if (address >= (unsigned long) TASK_SIZE)
		/* upper half - never has page table entries. */
		return 0;

	dir = FUNC2(mm, address);
	if (FUNC1(*dir) || !FUNC3(*dir))
		return 0;
	if (!FUNC3(*dir))
		return 0;

	pud = FUNC12(dir, address);
	if (FUNC11(*pud) || !FUNC13(*pud))
		return 0;

	pmd = FUNC5(pud, address);
	if (FUNC4(*pmd) || !FUNC6(*pmd))
		return 0;

	pte = FUNC8(pmd, address);
	entry = *pte;

	if (FUNC7(entry) || !FUNC9(entry))
		return 0;

	/*
	 * If the page doesn't have sufficient protection bits set to
	 * service the kind of fault being handled, there's not much
	 * point doing the TLB refill.  Punt the fault to the general
	 * handler.
	 */
	if ((FUNC10(entry) & protection_flags) != protection_flags)
		return 0;

        FUNC0(address, textaccess, pte);

	return 1;
}