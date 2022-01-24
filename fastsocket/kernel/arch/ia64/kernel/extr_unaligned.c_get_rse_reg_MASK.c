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
struct switch_stack {unsigned long ar_bspstore; unsigned long ar_rnat; } ;
struct pt_regs {int cr_ifs; scalar_t__ ar_bspstore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,...) ; 
 int IA64_RBS_OFFSET ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct switch_stack*,unsigned long,unsigned long,unsigned long*) ; 
 unsigned long FUNC2 (unsigned long*,unsigned long*) ; 
 unsigned long* FUNC3 (unsigned long*) ; 
 unsigned long* FUNC4 (unsigned long*,long) ; 
 unsigned long FUNC5 (unsigned long*) ; 
 long FUNC6 (long,long,long) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct pt_regs*) ; 

__attribute__((used)) static void
FUNC8 (struct pt_regs *regs, unsigned long r1, unsigned long *val, int *nat)
{
	struct switch_stack *sw = (struct switch_stack *) regs - 1;
	unsigned long *bsp, *addr, *rnat_addr, *ubs_end, *bspstore;
	unsigned long *kbs = (void *) current + IA64_RBS_OFFSET;
	unsigned long rnats, nat_mask;
	unsigned long on_kbs;
	long sof = (regs->cr_ifs) & 0x7f;
	long sor = 8 * ((regs->cr_ifs >> 14) & 0xf);
	long rrb_gr = (regs->cr_ifs >> 18) & 0x7f;
	long ridx = r1 - 32;

	if (ridx >= sof) {
		/* read of out-of-frame register returns an undefined value; 0 in our case.  */
		FUNC0("ignoring read from r%lu; only %lu registers are allocated!\n", r1, sof);
		goto fail;
	}

	if (ridx < sor)
		ridx = FUNC6(sor, rrb_gr, ridx);

	FUNC0("r%lu, sw.bspstore=%lx pt.bspstore=%lx sof=%ld sol=%ld ridx=%ld\n",
	       r1, sw->ar_bspstore, regs->ar_bspstore, sof, (regs->cr_ifs >> 7) & 0x7f, ridx);

	on_kbs = FUNC2(kbs, (unsigned long *) sw->ar_bspstore);
	addr = FUNC4((unsigned long *) sw->ar_bspstore, -sof + ridx);
	if (addr >= kbs) {
		/* the register is on the kernel backing store: easy... */
		*val = *addr;
		if (nat) {
			rnat_addr = FUNC3(addr);
			if ((unsigned long) rnat_addr >= sw->ar_bspstore)
				rnat_addr = &sw->ar_rnat;
			nat_mask = 1UL << FUNC5(addr);
			*nat = (*rnat_addr & nat_mask) != 0;
		}
		return;
	}

	if (!FUNC7(current, regs)) {
		FUNC0("ignoring kernel read of r%lu; register isn't on the RBS!", r1);
		goto fail;
	}

	bspstore = (unsigned long *)regs->ar_bspstore;
	ubs_end = FUNC4(bspstore, on_kbs);
	bsp     = FUNC4(ubs_end, -sof);
	addr    = FUNC4(bsp, ridx);

	FUNC0("ubs_end=%p bsp=%p addr=%p\n", (void *) ubs_end, (void *) bsp, (void *) addr);

	FUNC1(current, sw, (unsigned long) ubs_end, (unsigned long) addr, val);

	if (nat) {
		rnat_addr = FUNC3(addr);
		nat_mask = 1UL << FUNC5(addr);

		FUNC0("rnat @%p = 0x%lx\n", (void *) rnat_addr, rnats);

		FUNC1(current, sw, (unsigned long) ubs_end, (unsigned long) rnat_addr, &rnats);
		*nat = (rnats & nat_mask) != 0;
	}
	return;

  fail:
	*val = 0;
	if (nat)
		*nat = 0;
	return;
}