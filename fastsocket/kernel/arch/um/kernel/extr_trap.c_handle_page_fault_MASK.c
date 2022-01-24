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
struct vm_area_struct {unsigned long vm_start; int vm_flags; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_2__ {int /*<<< orphan*/  min_flt; int /*<<< orphan*/  maj_flt; struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EACCES ; 
 int EFAULT ; 
 int /*<<< orphan*/  FAULT_FLAG_WRITE ; 
 int SEGV_ACCERR ; 
 int SEGV_MAPERR ; 
 int VM_EXEC ; 
 int VM_FAULT_ERROR ; 
 int VM_FAULT_MAJOR ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_SIGBUS ; 
 int VM_GROWSDOWN ; 
 int VM_READ ; 
 int VM_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct vm_area_struct*,unsigned long) ; 
 struct vm_area_struct* FUNC5 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*,unsigned long) ; 
 int FUNC7 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

int FUNC19(unsigned long address, unsigned long ip,
		      int is_write, int is_user, int *code_out)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma;
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;
	int err = -EFAULT;

	*code_out = SEGV_MAPERR;

	/*
	 * If the fault was during atomic operation, don't take the fault, just
	 * fail.
	 */
	if (FUNC8())
		goto out_nosemaphore;

	FUNC3(&mm->mmap_sem);
	vma = FUNC5(mm, address);
	if (!vma)
		goto out;
	else if (vma->vm_start <= address)
		goto good_area;
	else if (!(vma->vm_flags & VM_GROWSDOWN))
		goto out;
	else if (is_user && !FUNC0(address))
		goto out;
	else if (FUNC4(vma, address))
		goto out;

good_area:
	*code_out = SEGV_ACCERR;
	if (is_write && !(vma->vm_flags & VM_WRITE))
		goto out;

	/* Don't require VM_READ|VM_EXEC for write faults! */
	if (!is_write && !(vma->vm_flags & (VM_READ | VM_EXEC)))
		goto out;

	do {
		int fault;

		fault = FUNC7(mm, vma, address, is_write ? FAULT_FLAG_WRITE : 0);
		if (FUNC17(fault & VM_FAULT_ERROR)) {
			if (fault & VM_FAULT_OOM) {
				goto out_of_memory;
			} else if (fault & VM_FAULT_SIGBUS) {
				err = -EACCES;
				goto out;
			}
			FUNC1();
		}
		if (fault & VM_FAULT_MAJOR)
			current->maj_flt++;
		else
			current->min_flt++;

		pgd = FUNC10(mm, address);
		pud = FUNC16(pgd, address);
		pmd = FUNC11(pud, address);
		pte = FUNC13(pmd, address);
	} while (!FUNC14(*pte));
	err = 0;
	/*
	 * The below warning was added in place of
	 *	pte_mkyoung(); if (is_write) pte_mkdirty();
	 * If it's triggered, we'd see normally a hang here (a clean pte is
	 * marked read-only to emulate the dirty bit).
	 * However, the generic code can mark a PTE writable but clean on a
	 * concurrent read fault, triggering this harmlessly. So comment it out.
	 */
#if 0
	WARN_ON(!pte_young(*pte) || (is_write && !pte_dirty(*pte)));
#endif
	FUNC6(vma, address);
out:
	FUNC18(&mm->mmap_sem);
out_nosemaphore:
	return err;

out_of_memory:
	/*
	 * We ran out of memory, call the OOM killer, and return the userspace
	 * (which will retry the fault, or kill us if we got oom-killed).
	 */
	FUNC18(&mm->mmap_sem);
	FUNC9();
	return 0;
}