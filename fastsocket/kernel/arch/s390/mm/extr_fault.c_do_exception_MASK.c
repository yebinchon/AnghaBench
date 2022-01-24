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
struct vm_area_struct {unsigned long vm_start; int vm_flags; } ;
struct task_struct {int /*<<< orphan*/  min_flt; int /*<<< orphan*/  maj_flt; struct mm_struct* mm; } ;
struct pt_regs {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAULT_FLAG_WRITE ; 
 unsigned long HPAGE_MASK ; 
 int /*<<< orphan*/  PERF_COUNT_SW_PAGE_FAULTS ; 
 int /*<<< orphan*/  PERF_COUNT_SW_PAGE_FAULTS_MAJ ; 
 int /*<<< orphan*/  PERF_COUNT_SW_PAGE_FAULTS_MIN ; 
 int /*<<< orphan*/  TIF_SINGLE_STEP ; 
 int VM_FAULT_BADACCESS ; 
 int VM_FAULT_BADCONTEXT ; 
 int VM_FAULT_BADMAP ; 
 int VM_FAULT_ERROR ; 
 int VM_FAULT_MAJOR ; 
 int VM_GROWSDOWN ; 
 int VM_WRITE ; 
 unsigned long __FAIL_ADDR_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct vm_area_struct*,unsigned long) ; 
 struct vm_area_struct* FUNC3 (struct mm_struct*,unsigned long) ; 
 int FUNC4 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,struct pt_regs*,unsigned long) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 

__attribute__((used)) static inline int FUNC13(struct pt_regs *regs, int access,
			       unsigned long trans_exc_code)
{
	struct task_struct *tsk;
	struct mm_struct *mm;
	struct vm_area_struct *vma;
	unsigned long address;
	int fault;

	if (FUNC8(regs))
		return 0;

	tsk = current;
	mm = tsk->mm;

	/*
	 * Verify that the fault happened in user space, that
	 * we are not in an interrupt and that there is a 
	 * user context.
	 */
	fault = VM_FAULT_BADCONTEXT;
	if (FUNC10(!FUNC12(trans_exc_code) || FUNC5() || !mm))
		goto out;

	address = trans_exc_code & __FAIL_ADDR_MASK;
	/*
	 * When we get here, the fault happened in the current
	 * task's user address space, so we can switch on the
	 * interrupts again and then search the VMAs
	 */
	FUNC7();
	FUNC9(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, address);
	FUNC1(&mm->mmap_sem);

	fault = VM_FAULT_BADMAP;
	vma = FUNC3(mm, address);
	if (!vma)
		goto out_up;

	if (FUNC10(vma->vm_start > address)) {
		if (!(vma->vm_flags & VM_GROWSDOWN))
			goto out_up;
		if (FUNC2(vma, address))
			goto out_up;
	}

	/*
	 * Ok, we have a good vm_area for this memory access, so
	 * we can handle it..
	 */
	fault = VM_FAULT_BADACCESS;
	if (FUNC10(!(vma->vm_flags & access)))
		goto out_up;

	if (FUNC6(vma))
		address &= HPAGE_MASK;
	/*
	 * If for any reason at all we couldn't handle the fault,
	 * make sure we exit gracefully rather than endlessly redo
	 * the fault.
	 */
	fault = FUNC4(mm, vma, address,
				(access == VM_WRITE) ? FAULT_FLAG_WRITE : 0);
	if (FUNC10(fault & VM_FAULT_ERROR))
		goto out_up;

	if (fault & VM_FAULT_MAJOR) {
		tsk->maj_flt++;
		FUNC9(PERF_COUNT_SW_PAGE_FAULTS_MAJ, 1,
				     regs, address);
	} else {
		tsk->min_flt++;
		FUNC9(PERF_COUNT_SW_PAGE_FAULTS_MIN, 1,
				     regs, address);
	}
	/*
	 * The instruction that caused the program check will
	 * be repeated. Don't signal single step via SIGTRAP.
	 */
	FUNC0(tsk, TIF_SINGLE_STEP);
	fault = 0;
out_up:
	FUNC11(&mm->mmap_sem);
out:
	return fault;
}