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
struct tlb_info {unsigned long long next; unsigned long long last; unsigned long long first; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_2__ {struct tlb_info dtlb; struct tlb_info itlb; } ;

/* Variables and functions */
 unsigned long MMU_VPN_MASK ; 
 unsigned long long PTEH_ASID_SHIFT ; 
 unsigned long long PTEH_VALID ; 
 unsigned long long TLB_STEP ; 
 unsigned long long _PAGE_FLAGS_HARDWARE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long) ; 
 TYPE_1__* cpu_data ; 
 unsigned long long FUNC1 () ; 
 unsigned long long FUNC2 (unsigned long) ; 
 unsigned long long FUNC3 (int /*<<< orphan*/ ) ; 

inline void FUNC4(unsigned long address,
                            unsigned long long is_text_not_data, pte_t *pte)
{
	unsigned long long ptel;
	unsigned long long pteh=0;
	struct tlb_info *tlbp;
	unsigned long long next;

	/* Get PTEL first */
	ptel = FUNC3(*pte);

	/*
	 * Set PTEH register
	 */
	pteh = FUNC2(address & MMU_VPN_MASK);

	/* Set the ASID. */
	pteh |= FUNC1() << PTEH_ASID_SHIFT;
	pteh |= PTEH_VALID;

	/* Set PTEL register, set_pte has performed the sign extension */
	ptel &= _PAGE_FLAGS_HARDWARE_MASK; /* drop software flags */

	tlbp = is_text_not_data ? &(cpu_data->itlb) : &(cpu_data->dtlb);
	next = tlbp->next;
	FUNC0(next);
	asm volatile ("putcfg %0,1,%2\n\n\t"
		      "putcfg %0,0,%1\n"
		      :  : "r" (next), "r" (pteh), "r" (ptel) );

	next += TLB_STEP;
	if (next > tlbp->last) next = tlbp->first;
	tlbp->next = next;

}