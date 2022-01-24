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
struct switch_stack {unsigned long ar_unat; unsigned long caller_unat; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,scalar_t__) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 unsigned long IA64_FIRST_STACKED_GR ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,unsigned long,unsigned long*,int*) ; 

__attribute__((used)) static void
FUNC4 (unsigned long regnum, unsigned long *val, int *nat, struct pt_regs *regs)
{
	struct switch_stack *sw = (struct switch_stack *) regs - 1;
	unsigned long addr, *unat;

	if (regnum >= IA64_FIRST_STACKED_GR) {
		FUNC3(regs, regnum, val, nat);
		return;
	}

	/*
	 * take care of r0 (read-only always evaluate to 0)
	 */
	if (regnum == 0) {
		*val = 0;
		if (nat)
			*nat = 0;
		return;
	}

	/*
	 * Now look at registers in [0-31] range and init correct UNAT
	 */
	if (FUNC1(regnum)) {
		addr = (unsigned long)sw;
		unat = &sw->ar_unat;
	} else {
		addr = (unsigned long)regs;
		unat = &sw->caller_unat;
	}

	FUNC0("addr_base=%lx offset=0x%x\n", addr,  FUNC2(regnum));

	addr += FUNC2(regnum);

	*val  = *(unsigned long *)addr;

	/*
	 * do it only when requested
	 */
	if (nat)
		*nat  = (*unat >> (addr >> 3 & 0x3f)) & 0x1UL;
}