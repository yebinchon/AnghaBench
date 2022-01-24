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
struct pt_regs {unsigned long pc; int psr; } ;

/* Variables and functions */
 int PSR_PS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int*) ; 
 unsigned long FUNC1 (struct pt_regs*,unsigned int) ; 

__attribute__((used)) static unsigned long FUNC2(struct pt_regs *regs, int text_fault)
{
	unsigned int insn;

	if (text_fault)
		return regs->pc;

	if (regs->psr & PSR_PS) {
		insn = *(unsigned int *) regs->pc;
	} else {
		FUNC0(insn, (unsigned int *) regs->pc);
	}

	return FUNC1(regs, insn);
}