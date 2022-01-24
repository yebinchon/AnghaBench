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
struct pt_regs {int bpc; } ;

/* Variables and functions */
 int FUNC0 (unsigned long,struct pt_regs*) ; 
 int FUNC1 (unsigned long,struct pt_regs*) ; 

int FUNC2(unsigned long insn32, struct pt_regs *regs)
{
	unsigned short insn16;
	int res;

	insn16 = insn32 >> 16;

	/* ld or st check */
	if ((insn16 & 0x7000) != 0x2000)
		return -1;

	/* insn alignment check */
	if ((insn16 & 0x8000) && (regs->bpc & 3))
		return -1;

	if (insn16 & 0x0080)	/* ld */
		res = FUNC0(insn32, regs);
	else			/* st */
		res = FUNC1(insn32, regs);

	return res;
}