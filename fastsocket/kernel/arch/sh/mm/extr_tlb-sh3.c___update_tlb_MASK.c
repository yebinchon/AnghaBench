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
 int /*<<< orphan*/  MMU_PTEH ; 
 int /*<<< orphan*/  MMU_PTEL ; 
 unsigned long MMU_VPN_MASK ; 
 unsigned long _PAGE_FLAGS_HARDWARE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct vm_area_struct *vma, unsigned long address, pte_t pte)
{
	unsigned long flags, pteval, vpn;

	/*
	 * Handle debugger faulting in for debugee.
	 */
	if (vma && current->active_mm != vma->vm_mm)
		return;

	FUNC3(flags);

	/* Set PTEH register */
	vpn = (address & MMU_VPN_MASK) | FUNC1();
	FUNC0(vpn, MMU_PTEH);

	pteval = FUNC4(pte);

	/* Set PTEL register */
	pteval &= _PAGE_FLAGS_HARDWARE_MASK; /* drop software flags */
	/* conveniently, we want all the software flags to be 0 anyway */
	FUNC0(pteval, MMU_PTEL);

	/* Load the TLB */
	asm volatile("ldtlb": /* no output */ : /* no input */ : "memory");
	FUNC2(flags);
}