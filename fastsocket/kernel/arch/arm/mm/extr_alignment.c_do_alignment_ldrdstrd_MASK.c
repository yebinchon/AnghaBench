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
struct pt_regs {unsigned long* uregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned int FUNC1 (unsigned long) ; 
 int TYPE_ERROR ; 
 int TYPE_FAULT ; 
 int TYPE_LDST ; 
 int ai_dword ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (struct pt_regs*) ; 

__attribute__((used)) static int
FUNC7(unsigned long addr, unsigned long instr,
		      struct pt_regs *regs)
{
	unsigned int rd = FUNC1(instr);
	unsigned int rd2;
	int load;

	if ((instr & 0xfe000000) == 0xe8000000) {
		/* ARMv7 Thumb-2 32-bit LDRD/STRD */
		rd2 = (instr >> 8) & 0xf;
		load = !!(FUNC0(instr));
	} else if (((rd & 1) == 1) || (rd == 14))
		goto bad;
	else {
		load = ((instr & 0xf0) == 0xd0);
		rd2 = rd + 1;
	}

	ai_dword += 1;

	if (FUNC6(regs))
		goto user;

	if (load) {
		unsigned long val;
		FUNC2(val, addr);
		regs->uregs[rd] = val;
		FUNC2(val, addr + 4);
		regs->uregs[rd2] = val;
	} else {
		FUNC4(regs->uregs[rd], addr);
		FUNC4(regs->uregs[rd2], addr + 4);
	}

	return TYPE_LDST;

 user:
	if (load) {
		unsigned long val;
		FUNC3(val, addr);
		regs->uregs[rd] = val;
		FUNC3(val, addr + 4);
		regs->uregs[rd2] = val;
	} else {
		FUNC5(regs->uregs[rd], addr);
		FUNC5(regs->uregs[rd2], addr + 4);
	}

	return TYPE_LDST;
 bad:
	return TYPE_ERROR;
 fault:
	return TYPE_FAULT;
}