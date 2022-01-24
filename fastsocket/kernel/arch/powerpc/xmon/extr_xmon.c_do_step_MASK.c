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
struct pt_regs {int msr; int trap; int /*<<< orphan*/  nip; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int MSR_IR ; 
 int MSR_PR ; 
 int MSR_SE ; 
 int MSR_SF ; 
 int FUNC1 (struct pt_regs*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC6(struct pt_regs *regs)
{
	unsigned int instr;
	int stepped;

	/* check we are in 64-bit kernel mode, translation enabled */
	if ((regs->msr & (MSR_SF|MSR_PR|MSR_IR)) == (MSR_SF|MSR_IR)) {
		if (FUNC2(regs->nip, &instr, 4) == 4) {
			stepped = FUNC1(regs, instr);
			if (stepped < 0) {
				FUNC4("Couldn't single-step %s instruction\n",
				       (FUNC0(instr)? "rfid": "mtmsrd"));
				return 0;
			}
			if (stepped > 0) {
				regs->trap = 0xd00 | (regs->trap & 1);
				FUNC4("stepped to ");
				FUNC5(regs->nip, " ", "\n");
				FUNC3(regs->nip, 1, 0);
				return 0;
			}
		}
	}
	regs->msr |= MSR_SE;
	return 1;
}