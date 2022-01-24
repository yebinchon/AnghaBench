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
struct pt_regs {int pc; int sr; int* regs; long pr; } ;
typedef  int /*<<< orphan*/  insn_size_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 size_t FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 size_t FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int SR_T_BIT_MASK ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (long,long) ; 
 long FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static short *FUNC22(struct pt_regs *linux_regs)
{
	insn_size_t op = FUNC19(linux_regs->pc);
	long addr;

	/* BT */
	if (FUNC10(op)) {
		if (linux_regs->sr & SR_T_BIT_MASK)
			addr = linux_regs->pc + 4 + FUNC11(op);
		else
			addr = linux_regs->pc + 2;
	}

	/* BTS */
	else if (FUNC12(op)) {
		if (linux_regs->sr & SR_T_BIT_MASK)
			addr = linux_regs->pc + 4 + FUNC11(op);
		else
			addr = linux_regs->pc + 4;	/* Not in delay slot */
	}

	/* BF */
	else if (FUNC0(op)) {
		if (!(linux_regs->sr & SR_T_BIT_MASK))
			addr = linux_regs->pc + 4 + FUNC11(op);
		else
			addr = linux_regs->pc + 2;
	}

	/* BFS */
	else if (FUNC1(op)) {
		if (!(linux_regs->sr & SR_T_BIT_MASK))
			addr = linux_regs->pc + 4 + FUNC11(op);
		else
			addr = linux_regs->pc + 4;	/* Not in delay slot */
	}

	/* BRA */
	else if (FUNC2(op))
		addr = linux_regs->pc + 4 + FUNC5(op);

	/* BRAF */
	else if (FUNC3(op))
		addr = linux_regs->pc + 4
		    + linux_regs->regs[FUNC4(op)];

	/* BSR */
	else if (FUNC6(op))
		addr = linux_regs->pc + 4 + FUNC9(op);

	/* BSRF */
	else if (FUNC7(op))
		addr = linux_regs->pc + 4
		    + linux_regs->regs[FUNC8(op)];

	/* JMP */
	else if (FUNC13(op))
		addr = linux_regs->regs[FUNC14(op)];

	/* JSR */
	else if (FUNC15(op))
		addr = linux_regs->regs[FUNC16(op)];

	/* RTS */
	else if (FUNC18(op))
		addr = linux_regs->pr;

	/* RTE */
	else if (FUNC17(op))
		addr = linux_regs->regs[15];

	/* Other */
	else
		addr = linux_regs->pc + FUNC21(op);

	FUNC20(addr, addr + FUNC21(op));
	return (short *)addr;
}