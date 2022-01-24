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
struct pt_regs {int dummy; } ;
struct TYPE_2__ {int* gsr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 TYPE_1__* FUNC3 () ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pt_regs*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct pt_regs *regs, unsigned int insn)
{
	unsigned long rs1, rs2, rd_val, gsr;

	FUNC5(FUNC1(insn), FUNC2(insn), FUNC0(insn), 0);
	rs1 = FUNC4(FUNC1(insn), regs);
	rs2 = FUNC4(FUNC2(insn), regs);
	rd_val = rs1 + rs2;

	FUNC6(regs, rd_val, FUNC0(insn));

	gsr = FUNC3()->gsr[0] & 0xffffffff;
	gsr |= rd_val << 32UL;
	FUNC3()->gsr[0] = gsr;
}