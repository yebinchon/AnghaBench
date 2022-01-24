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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 unsigned short ISA_STH2 ; 
 int FUNC0 (unsigned short) ; 
 int FUNC1 (unsigned short) ; 
 scalar_t__ FUNC2 (unsigned char*,unsigned long*,int) ; 
 unsigned long FUNC3 (struct pt_regs*,int) ; 
 scalar_t__ FUNC4 (unsigned long,struct pt_regs*,unsigned char**) ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*,int,unsigned long) ; 

__attribute__((used)) static int FUNC6(unsigned long insn32, struct pt_regs *regs)
{
	unsigned char *ucp;
	unsigned long val;
	unsigned short insn16;
	int size, src2;

	insn16 = insn32 >> 16;
	src2 = FUNC1(insn16);

	ucp = (unsigned char *)FUNC3(regs, src2);

	if (FUNC4(insn32, regs, &ucp))
		return -1;

	size = insn16 & 0x0040 ? 4 : 2;
	val = FUNC3(regs, FUNC0(insn16));
	if (size == 2)
		val <<= 16;

	/* st inc/dec check */
	if ((insn16 & 0xf0e0) == 0x2060) {
		if (insn16 & 0x0010)
			ucp -= 4;
		else
			ucp += 4;

		FUNC5(regs, src2, (unsigned long)ucp);
	}

	if (FUNC2(ucp, &val, size))
		return -1;

	/* sth inc check */
	if ((insn16 & 0xf0f0) == ISA_STH2) {
		ucp += 2;
		FUNC5(regs, src2, (unsigned long)ucp);
	}

	return 0;
}