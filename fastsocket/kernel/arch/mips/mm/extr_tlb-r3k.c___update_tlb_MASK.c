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
struct vm_area_struct {scalar_t__ vm_mm; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_2__ {scalar_t__ active_mm; } ;

/* Variables and functions */
 int ASID_MASK ; 
 int /*<<< orphan*/  BARRIER ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  cpu ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(struct vm_area_struct *vma, unsigned long address, pte_t pte)
{
	unsigned long flags;
	int idx, pid;

	/*
	 * Handle debugger faulting in for debugee.
	 */
	if (current->active_mm != vma->vm_mm)
		return;

	pid = FUNC5() & ASID_MASK;

#ifdef DEBUG_TLB
	if ((pid != (cpu_context(cpu, vma->vm_mm) & ASID_MASK)) || (cpu_context(cpu, vma->vm_mm) == 0)) {
		printk("update_mmu_cache: Wheee, bogus tlbpid mmpid=%lu tlbpid=%d\n",
		       (cpu_context(cpu, vma->vm_mm)), pid);
	}
#endif

	FUNC2(flags);
	address &= PAGE_MASK;
	FUNC10(address | pid);
	BARRIER;
	FUNC7();
	idx = FUNC6();
	FUNC11(FUNC4(pte));
	FUNC10(address | pid);
	if (idx < 0) {					/* BARRIER */
		FUNC9();
	} else {
		FUNC8();
	}
	FUNC10(pid);
	FUNC1(flags);
}