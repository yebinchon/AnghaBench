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
struct pt_regs {int flags; unsigned long sp; int /*<<< orphan*/  ip; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 unsigned int FAULT_FLAG_ALLOW_RETRY ; 
 unsigned int FAULT_FLAG_KILLABLE ; 
 unsigned int FAULT_FLAG_WRITE ; 
 int /*<<< orphan*/  PERF_COUNT_SW_PAGE_FAULTS ; 
 int /*<<< orphan*/  PERF_COUNT_SW_PAGE_FAULTS_MAJ ; 
 int /*<<< orphan*/  PERF_COUNT_SW_PAGE_FAULTS_MIN ; 
 unsigned long PF_PROT ; 
 unsigned long PF_RSVD ; 
 unsigned long PF_USER ; 
 unsigned long PF_WRITE ; 
 int VM_FAULT_ERROR ; 
 int VM_FAULT_MAJOR ; 
 int VM_FAULT_RETRY ; 
 int VM_GROWSDOWN ; 
 int X86_EFLAGS_IF ; 
 int FUNC0 (unsigned long,int,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*,unsigned long,struct task_struct*) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct vm_area_struct*,unsigned long) ; 
 int FUNC8 (unsigned long) ; 
 struct vm_area_struct* FUNC9 (struct mm_struct*,unsigned long) ; 
 int FUNC10 (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned int) ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 (struct pt_regs*) ; 
 scalar_t__ FUNC13 (struct pt_regs*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct pt_regs*) ; 
 int FUNC15 (struct pt_regs*,unsigned long) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 (struct pt_regs*,unsigned long,unsigned long,int) ; 
 int FUNC20 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,struct pt_regs*,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (struct pt_regs*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (struct pt_regs*) ; 
 scalar_t__ FUNC29 (unsigned long) ; 

__attribute__((used)) static inline void FUNC30(struct pt_regs *regs, unsigned long address, unsigned long error_code)
{
	struct vm_area_struct *vma;
	struct task_struct *tsk;
	struct mm_struct *mm;
	int fault;
	int write = error_code & PF_WRITE;
	unsigned int flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE |
					(write ? FAULT_FLAG_WRITE : 0);

	tsk = current;
	mm = tsk->mm;

	/*
	 * Detect and handle instructions that would cause a page fault for
	 * both a tracked kernel page and a userspace page.
	 */
	if (FUNC12(regs))
		FUNC14(regs);
	FUNC23(&mm->mmap_sem);

	if (FUNC26(FUNC15(regs, address)))
		return;

	/*
	 * We fault-in kernel-space virtual memory on-demand. The
	 * 'reference' page table is init_mm.pgd.
	 *
	 * NOTE! We MUST NOT take any locks for this case. We may
	 * be in an interrupt or a critical region, and should
	 * only copy the information from the master page table,
	 * nothing more.
	 *
	 * This verifies that the fault happens in kernel space
	 * (error_code & 4) == 0, and that the fault was not a
	 * protection error (error_code & 9) == 0.
	 */
	if (FUNC26(FUNC8(address))) {
		if (!(error_code & (PF_RSVD | PF_USER | PF_PROT))) {
			if (FUNC29(address) >= 0)
				return;

			if (FUNC13(regs, address, error_code))
				return;
		}

		/* Can handle a stale RO->RW TLB: */
		if (FUNC25(error_code, address))
			return;

		/* kprobes don't want to hook the spurious faults: */
		if (FUNC20(regs))
			return;
		/*
		 * Don't take the mm semaphore here. If we fixup a prefetch
		 * fault we could otherwise deadlock:
		 */
		FUNC3(regs, error_code, address);

		return;
	}

	/* kprobes don't want to hook the spurious faults: */
	if (FUNC26(FUNC20(regs)))
		return;
	/*
	 * It's safe to allow irq's after cr2 has been saved and the
	 * vmalloc fault has been handled.
	 *
	 * User-mode registers count as a user access even for any
	 * potential system fault or CPU buglet:
	 */
	if (FUNC28(regs)) {
		FUNC17();
		error_code |= PF_USER;
	} else {
		if (regs->flags & X86_EFLAGS_IF)
			FUNC17();
	}

	if (FUNC26(error_code & PF_RSVD))
		FUNC22(regs, error_code, address);

	FUNC21(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, address);

	/*
	 * If we're in an interrupt, have no user context or are running
	 * in an atomic region then we must not take the fault:
	 */
	if (FUNC26(FUNC11() || !mm)) {
		FUNC3(regs, error_code, address);
		return;
	}

	/*
	 * When running in the kernel we expect faults to occur only to
	 * addresses in user space.  All other faults represent errors in
	 * the kernel and should generate an OOPS.  Unfortunately, in the
	 * case of an erroneous fault occurring in a code path which already
	 * holds mmap_sem we will deadlock attempting to validate the fault
	 * against the address space.  Luckily the kernel only validly
	 * references user space from well defined areas of code, which are
	 * listed in the exceptions table.
	 *
	 * As the vast majority of faults will be valid we will only perform
	 * the source reference check when there is a possibility of a
	 * deadlock. Attempt to lock the address space, if we cannot we then
	 * validate the source. If this is invalid we can skip the address
	 * space check, thus avoiding the deadlock:
	 */
	if (FUNC26(!FUNC6(&mm->mmap_sem))) {
		if ((error_code & PF_USER) == 0 &&
		    !FUNC24(regs->ip)) {
			FUNC3(regs, error_code, address);
			return;
		}
retry:
		FUNC5(&mm->mmap_sem);
	} else {
		/*
		 * The above down_read_trylock() might have succeeded in
		 * which case we'll have missed the might_sleep() from
		 * down_read():
		 */
		FUNC18();
	}

	vma = FUNC9(mm, address);
	if (FUNC26(!vma)) {
		FUNC1(regs, error_code, address);
		return;
	}
	if (FUNC16(vma->vm_start <= address))
		goto good_area;
	if (FUNC26(!(vma->vm_flags & VM_GROWSDOWN))) {
		FUNC1(regs, error_code, address);
		return;
	}
	if (error_code & PF_USER) {
		/*
		 * Accessing the stack below %sp is always a bug.
		 * The large cushion allows instructions like enter
		 * and pusha to work. ("enter $65535, $31" pushes
		 * 32 pointers and then decrements %sp by 65535.)
		 */
		if (FUNC26(address + 65536 + 32 * sizeof(unsigned long) < regs->sp)) {
			FUNC1(regs, error_code, address);
			return;
		}
	}
	if (FUNC26(FUNC7(vma, address))) {
		FUNC1(regs, error_code, address);
		return;
	}

	/*
	 * Ok, we have a good vm_area for this memory access, so
	 * we can handle it..
	 */
good_area:
	if (FUNC26(FUNC0(error_code, write, vma))) {
		FUNC2(regs, error_code, address);
		return;
	}

	/*
	 * If for any reason at all we couldn't handle the fault,
	 * make sure we exit gracefully rather than endlessly redo
	 * the fault:
	 */
	fault = FUNC10(mm, vma, address, flags);

	if (FUNC26(fault & (VM_FAULT_RETRY|VM_FAULT_ERROR))) {
		if (FUNC19(regs, error_code, address, fault))
			return;
	}

	/*
	 * Major/minor page fault accounting is only done on the
	 * initial attempt. If we go through a retry, it is extremely
	 * likely that the page will be found in page cache at that point.
	 */
	if (flags & FAULT_FLAG_ALLOW_RETRY) {
		if (fault & VM_FAULT_MAJOR) {
			tsk->maj_flt++;
			FUNC21(PERF_COUNT_SW_PAGE_FAULTS_MAJ, 1,
				      regs, address);
		} else {
			tsk->min_flt++;
			FUNC21(PERF_COUNT_SW_PAGE_FAULTS_MIN, 1,
				      regs, address);
		}
		if (fault & VM_FAULT_RETRY) {
			/* Clear FAULT_FLAG_ALLOW_RETRY to avoid any risk
			 * of starvation. */
			flags &= ~FAULT_FLAG_ALLOW_RETRY;
			goto retry;
		}
	}

	FUNC4(regs, address, tsk);

	FUNC27(&mm->mmap_sem);
}