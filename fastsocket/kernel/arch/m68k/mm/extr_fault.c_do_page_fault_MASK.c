#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int vm_flags; unsigned long vm_start; } ;
struct pt_regs {int /*<<< orphan*/  pc; int /*<<< orphan*/  sr; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; int /*<<< orphan*/  pgd; } ;
struct TYPE_4__ {unsigned long faddr; int /*<<< orphan*/  code; void* signo; } ;
struct TYPE_5__ {int comm; TYPE_1__ thread; int /*<<< orphan*/  min_flt; int /*<<< orphan*/  maj_flt; struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  BUS_ADRERR ; 
 int /*<<< orphan*/  FAULT_FLAG_WRITE ; 
 int /*<<< orphan*/  SEGV_ACCERR ; 
 int /*<<< orphan*/  SEGV_MAPERR ; 
 void* SIGBUS ; 
 int /*<<< orphan*/  SIGKILL ; 
 void* SIGSEGV ; 
 int VM_EXEC ; 
 int VM_FAULT_ERROR ; 
 int VM_FAULT_MAJOR ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_SIGBUS ; 
 int VM_GROWSDOWN ; 
 int VM_IO ; 
 int VM_READ ; 
 int VM_WRITE ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct vm_area_struct*,unsigned long) ; 
 struct vm_area_struct* FUNC4 (struct mm_struct*,unsigned long) ; 
 int FUNC5 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 unsigned long FUNC9 () ; 
 int FUNC10 (struct pt_regs*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

int FUNC15(struct pt_regs *regs, unsigned long address,
			      unsigned long error_code)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct * vma;
	int write, fault;

#ifdef DEBUG
	printk ("do page fault:\nregs->sr=%#x, regs->pc=%#lx, address=%#lx, %ld, %p\n",
		regs->sr, regs->pc, address, error_code,
		current->mm->pgd);
#endif

	/*
	 * If we're in an interrupt or have no user
	 * context, we must not take the fault..
	 */
	if (FUNC6() || !mm)
		goto no_context;

	FUNC2(&mm->mmap_sem);

	vma = FUNC4(mm, address);
	if (!vma)
		goto map_err;
	if (vma->vm_flags & VM_IO)
		goto acc_err;
	if (vma->vm_start <= address)
		goto good_area;
	if (!(vma->vm_flags & VM_GROWSDOWN))
		goto map_err;
	if (FUNC13(regs)) {
		/* Accessing the stack below usp is always a bug.  The
		   "+ 256" is there due to some instructions doing
		   pre-decrement on the stack and that doesn't show up
		   until later.  */
		if (address + 256 < FUNC9())
			goto map_err;
	}
	if (FUNC3(vma, address))
		goto map_err;

/*
 * Ok, we have a good vm_area for this memory access, so
 * we can handle it..
 */
good_area:
#ifdef DEBUG
	printk("do_page_fault: good_area\n");
#endif
	write = 0;
	switch (error_code & 3) {
		default:	/* 3: write, present */
			/* fall through */
		case 2:		/* write, not present */
			if (!(vma->vm_flags & VM_WRITE))
				goto acc_err;
			write++;
			break;
		case 1:		/* read, present */
			goto acc_err;
		case 0:		/* read, not present */
			if (!(vma->vm_flags & (VM_READ | VM_EXEC | VM_WRITE)))
				goto acc_err;
	}

	/*
	 * If for any reason at all we couldn't handle the fault,
	 * make sure we exit gracefully rather than endlessly redo
	 * the fault.
	 */

 survive:
	fault = FUNC5(mm, vma, address, write ? FAULT_FLAG_WRITE : 0);
#ifdef DEBUG
	printk("handle_mm_fault returns %d\n",fault);
#endif
	if (FUNC11(fault & VM_FAULT_ERROR)) {
		if (fault & VM_FAULT_OOM)
			goto out_of_memory;
		else if (fault & VM_FAULT_SIGBUS)
			goto bus_err;
		FUNC0();
	}
	if (fault & VM_FAULT_MAJOR)
		current->maj_flt++;
	else
		current->min_flt++;

	FUNC12(&mm->mmap_sem);
	return 0;

/*
 * We ran out of memory, or some other thing happened to us that made
 * us unable to handle the page fault gracefully.
 */
out_of_memory:
	FUNC12(&mm->mmap_sem);
	if (FUNC7(current)) {
		FUNC14();
		FUNC2(&mm->mmap_sem);
		goto survive;
	}

	FUNC8("VM: killing process %s\n", current->comm);
	if (FUNC13(regs))
		FUNC1(SIGKILL);

no_context:
	current->thread.signo = SIGBUS;
	current->thread.faddr = address;
	return FUNC10(regs);

bus_err:
	current->thread.signo = SIGBUS;
	current->thread.code = BUS_ADRERR;
	current->thread.faddr = address;
	goto send_sig;

map_err:
	current->thread.signo = SIGSEGV;
	current->thread.code = SEGV_MAPERR;
	current->thread.faddr = address;
	goto send_sig;

acc_err:
	current->thread.signo = SIGSEGV;
	current->thread.code = SEGV_ACCERR;
	current->thread.faddr = address;

send_sig:
	FUNC12(&mm->mmap_sem);
	return FUNC10(regs);
}