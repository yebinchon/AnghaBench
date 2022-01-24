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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_2__ {scalar_t__ active_mm; } ;

/* Variables and functions */
 int ASID_MASK ; 
 unsigned long PAGE_MASK ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 

void FUNC12(struct vm_area_struct * vma, unsigned long address, pte_t pte)
{
	unsigned long flags;
	pgd_t *pgdp;
	pmd_t *pmdp;
	pte_t *ptep;
	int pid;

	/*
	 * Handle debugger faulting in for debugee.
	 */
	if (current->active_mm != vma->vm_mm)
		return;

	pid = FUNC6() & ASID_MASK;

	FUNC1(flags);
	address &= PAGE_MASK;
	FUNC11(address);
	FUNC9(pid);
	pgdp = FUNC2(vma->vm_mm, address);
	pmdp = FUNC3(pgdp, address);
	ptep = FUNC4(pmdp, address);
	FUNC7();

	FUNC10(FUNC5(*ptep++) >> 6);
	FUNC8();

	FUNC9(pid);
	FUNC0(flags);
}