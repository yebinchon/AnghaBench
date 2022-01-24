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
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long* FUNC4 (unsigned long*) ; 
 unsigned long FUNC5 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long* FUNC7 (unsigned long*,long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 long FUNC10 (long,long,long) ; 

void FUNC11(struct kvm_pt_regs *regs, unsigned long r1,
				unsigned long val, unsigned long nat)
{
	unsigned long *bsp, *bspstore, *addr, *rnat_addr;
	unsigned long *kbs = (void *) current_vcpu + VMM_RBS_OFFSET;
	unsigned long nat_mask;
	unsigned long old_rsc, new_rsc, psr;
	unsigned long rnat;
	long sof = (regs->cr_ifs) & 0x7f;
	long sor = (((regs->cr_ifs >> 14) & 0xf) << 3);
	long rrb_gr = (regs->cr_ifs >> 18) & 0x7f;
	long ridx = r1 - 32;

	if (ridx < sor)
		ridx = FUNC10(sor, rrb_gr, ridx);

	old_rsc = FUNC1(_IA64_REG_AR_RSC);
	/* put RSC to lazy mode, and set loadrs 0 */
	new_rsc = old_rsc & (~0x3fff0003);
	FUNC6(_IA64_REG_AR_RSC, new_rsc);
	bsp = kbs + (regs->loadrs >> 19); /* 16 + 3 */

	addr = FUNC7(bsp, -sof + ridx);
	nat_mask = 1UL << FUNC5(addr);
	rnat_addr = FUNC4(addr);

	FUNC9(psr);
	bspstore = (unsigned long *)FUNC1(_IA64_REG_AR_BSPSTORE);
	if (addr >= bspstore) {

		FUNC0();
		FUNC3();
		*addr = val;
		bspstore = (unsigned long *)FUNC1(_IA64_REG_AR_BSPSTORE);
		rnat = FUNC1(_IA64_REG_AR_RNAT);
		if (bspstore < rnat_addr)
			rnat = rnat & (~nat_mask);
		else
			*rnat_addr = (*rnat_addr)&(~nat_mask);

		FUNC3();
		FUNC2();
		FUNC6(_IA64_REG_AR_RNAT, rnat);
	} else {
		rnat = FUNC1(_IA64_REG_AR_RNAT);
		*addr = val;
		if (bspstore < rnat_addr)
			rnat = rnat&(~nat_mask);
		else
			*rnat_addr = (*rnat_addr) & (~nat_mask);

		FUNC6(_IA64_REG_AR_BSPSTORE, (unsigned long)bspstore);
		FUNC6(_IA64_REG_AR_RNAT, rnat);
	}
	FUNC8(psr);
	FUNC6(_IA64_REG_AR_RSC, old_rsc);
}