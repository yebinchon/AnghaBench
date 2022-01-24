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
struct seq_file {int dummy; } ;
struct pt_regs {unsigned int ax; unsigned int bx; unsigned int cx; unsigned int dx; unsigned int si; unsigned int di; unsigned int bp; unsigned int sp; unsigned int r8; unsigned int r9; unsigned int r10; unsigned int r11; unsigned int r12; unsigned int r13; unsigned int r14; unsigned int r15; int ss; unsigned int flags; unsigned int ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,unsigned int) ; 
 struct pt_regs* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *arg)
{
	struct pt_regs *regs = FUNC1(current);
	struct seq_file *seq = arg;
	unsigned int seg;

	FUNC0(seq, " RAX\t: %016lx\n", regs->ax);
	FUNC0(seq, " RBX\t: %016lx\n", regs->bx);
	FUNC0(seq, " RCX\t: %016lx\n", regs->cx);
	FUNC0(seq, " RDX\t: %016lx\n", regs->dx);

	FUNC0(seq, " RSI\t: %016lx\n", regs->si);
	FUNC0(seq, " RDI\t: %016lx\n", regs->di);
	FUNC0(seq, " RBP\t: %016lx\n", regs->bp);
	FUNC0(seq, " ESP\t: %016lx\n", regs->sp);

#ifdef CONFIG_X86_64
	seq_printf(seq, " R08\t: %016lx\n", regs->r8);
	seq_printf(seq, " R09\t: %016lx\n", regs->r9);
	seq_printf(seq, " R10\t: %016lx\n", regs->r10);
	seq_printf(seq, " R11\t: %016lx\n", regs->r11);
	seq_printf(seq, " R12\t: %016lx\n", regs->r12);
	seq_printf(seq, " R13\t: %016lx\n", regs->r13);
	seq_printf(seq, " R14\t: %016lx\n", regs->r14);
	seq_printf(seq, " R15\t: %016lx\n", regs->r15);
#endif

	asm("movl %%cs,%0" : "=r" (seg));
	FUNC0(seq, " CS\t:             %04x\n", seg);
	asm("movl %%ds,%0" : "=r" (seg));
	FUNC0(seq, " DS\t:             %04x\n", seg);
	FUNC0(seq, " SS\t:             %04lx\n", regs->ss & 0xffff);
	asm("movl %%es,%0" : "=r" (seg));
	FUNC0(seq, " ES\t:             %04x\n", seg);
	asm("movl %%fs,%0" : "=r" (seg));
	FUNC0(seq, " FS\t:             %04x\n", seg);
	asm("movl %%gs,%0" : "=r" (seg));
	FUNC0(seq, " GS\t:             %04x\n", seg);

	FUNC0(seq, " EFLAGS\t: %016lx\n", regs->flags);

	FUNC0(seq, " EIP\t: %016lx\n", regs->ip);
}