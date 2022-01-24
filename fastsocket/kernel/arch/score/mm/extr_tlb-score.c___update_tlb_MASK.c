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
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 () ; 

void FUNC11(struct vm_area_struct *vma, unsigned long address, pte_t pte)
{
	unsigned long flags;
	int idx, pid;

	/*
	 * Handle debugger faulting in for debugee.
	 */
	if (current->active_mm != vma->vm_mm)
		return;

	pid = FUNC4() & ASID_MASK;

	FUNC2(flags);
	address &= PAGE_MASK;
	FUNC5(address | pid);
	FUNC0();
	FUNC7();
	idx = FUNC10();
	FUNC3(FUNC6(pte));
	FUNC5(address | pid);
	if (idx < 0)
		FUNC9();
	else
		FUNC8();

	FUNC5(pid);
	FUNC1(flags);
}