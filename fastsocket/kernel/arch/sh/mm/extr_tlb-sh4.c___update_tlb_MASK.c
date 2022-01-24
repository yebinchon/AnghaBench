#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {scalar_t__ vm_mm; } ;
struct TYPE_5__ {unsigned long pte_low; unsigned long pte_high; } ;
typedef  TYPE_1__ pte_t ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {scalar_t__ active_mm; } ;

/* Variables and functions */
 int CPU_HAS_PTEA ; 
 int /*<<< orphan*/  MMU_PTEA ; 
 int /*<<< orphan*/  MMU_PTEH ; 
 int /*<<< orphan*/  MMU_PTEL ; 
 unsigned long MMU_VPN_MASK ; 
 unsigned long _PAGE_FLAGS_HARDWARE_MASK ; 
 unsigned long _PAGE_WT ; 
 unsigned long FUNC0 (unsigned long) ; 
 TYPE_3__* cpu_data ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

void FUNC5(struct vm_area_struct *vma, unsigned long address, pte_t pte)
{
	unsigned long flags, pteval, vpn;

	/*
	 * Handle debugger faulting in for debugee.
	 */
	if (vma && current->active_mm != vma->vm_mm)
		return;

	FUNC4(flags);

	/* Set PTEH register */
	vpn = (address & MMU_VPN_MASK) | FUNC2();
	FUNC1(vpn, MMU_PTEH);

	pteval = pte.pte_low;

	/* Set PTEA register */
#ifdef CONFIG_X2TLB
	/*
	 * For the extended mode TLB this is trivial, only the ESZ and
	 * EPR bits need to be written out to PTEA, with the remainder of
	 * the protection bits (with the exception of the compat-mode SZ
	 * and PR bits, which are cleared) being written out in PTEL.
	 */
	ctrl_outl(pte.pte_high, MMU_PTEA);
#else
	if (cpu_data->flags & CPU_HAS_PTEA) {
		/* The last 3 bits and the first one of pteval contains
		 * the PTEA timing control and space attribute bits
		 */
		FUNC1(FUNC0(pteval), MMU_PTEA);
	}
#endif

	/* Set PTEL register */
	pteval &= _PAGE_FLAGS_HARDWARE_MASK; /* drop software flags */
#ifdef CONFIG_CACHE_WRITETHROUGH
	pteval |= _PAGE_WT;
#endif
	/* conveniently, we want all the software flags to be 0 anyway */
	FUNC1(pteval, MMU_PTEL);

	/* Load the TLB */
	asm volatile("ldtlb": /* no output */ : /* no input */ : "memory");
	FUNC3(flags);
}