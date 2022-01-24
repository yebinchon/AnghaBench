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
struct pt_regs {int pc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned short,unsigned short*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void FUNC3(struct pt_regs *regs)
{
	unsigned short *pc = (unsigned short *)regs->pc;
	long i;

	if (regs->pc & 0x1)
		return;

	FUNC2("Code:\n");

	for (i = -3 ; i < 6 ; i++) {
		unsigned short insn;

		if (FUNC0(insn, pc + i)) {
			FUNC2(" (Bad address in pc)\n");
			break;
		}

		FUNC2("%s%08lx:  ", (i ? "  ": "->"), (unsigned long)(pc + i));
		FUNC1((unsigned long)(pc + i), insn);
		FUNC2("\n");
	}

	FUNC2("\n");
}