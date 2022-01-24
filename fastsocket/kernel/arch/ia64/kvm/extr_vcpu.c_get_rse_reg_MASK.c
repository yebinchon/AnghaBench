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
struct kvm_pt_regs {int cr_ifs; int loadrs; } ;

/* Variables and functions */
 int VMM_RBS_OFFSET ; 
 int /*<<< orphan*/  _IA64_REG_AR_BSPSTORE ; 
 int /*<<< orphan*/  _IA64_REG_AR_RNAT ; 
 int /*<<< orphan*/  _IA64_REG_AR_RSC ; 
 scalar_t__ current_vcpu ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long* FUNC3 (unsigned long*) ; 
 unsigned long FUNC4 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long* FUNC6 (unsigned long*,long) ; 
 long FUNC7 (long,long,long) ; 

__attribute__((used)) static void FUNC8(struct kvm_pt_regs *regs, unsigned long r1,
					unsigned long *val, int *nat)
{
	unsigned long *bsp, *addr, *rnat_addr, *bspstore;
	unsigned long *kbs = (void *) current_vcpu + VMM_RBS_OFFSET;
	unsigned long nat_mask;
	unsigned long old_rsc, new_rsc;
	long sof = (regs->cr_ifs) & 0x7f;
	long sor = (((regs->cr_ifs >> 14) & 0xf) << 3);
	long rrb_gr = (regs->cr_ifs >> 18) & 0x7f;
	long ridx = r1 - 32;

	if (ridx < sor)
		ridx = FUNC7(sor, rrb_gr, ridx);

	old_rsc = FUNC1(_IA64_REG_AR_RSC);
	new_rsc = old_rsc&(~(0x3));
	FUNC5(_IA64_REG_AR_RSC, new_rsc);

	bspstore = (unsigned long *)FUNC1(_IA64_REG_AR_BSPSTORE);
	bsp = kbs + (regs->loadrs >> 19);

	addr = FUNC6(bsp, -sof + ridx);
	nat_mask = 1UL << FUNC4(addr);
	rnat_addr = FUNC3(addr);

	if (addr >= bspstore) {
		FUNC0();
		FUNC2();
		bspstore = (unsigned long *)FUNC1(_IA64_REG_AR_BSPSTORE);
	}
	*val = *addr;
	if (nat) {
		if (bspstore < rnat_addr)
			*nat = (int)!!(FUNC1(_IA64_REG_AR_RNAT)
							& nat_mask);
		else
			*nat = (int)!!((*rnat_addr) & nat_mask);
		FUNC5(_IA64_REG_AR_RSC, old_rsc);
	}
}