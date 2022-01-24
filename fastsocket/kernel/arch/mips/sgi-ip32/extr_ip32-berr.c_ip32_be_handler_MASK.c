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
struct pt_regs {int cp0_cause; int /*<<< orphan*/  cp0_epc; } ;

/* Variables and functions */
 int MIPS_BE_FIXUP ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC4(struct pt_regs *regs, int is_fixup)
{
	int data = regs->cp0_cause & 4;

	if (is_fixup)
		return MIPS_BE_FIXUP;

	FUNC2("Got %cbe at 0x%lx\n", data ? 'd' : 'i', regs->cp0_epc);
	FUNC3(regs);
	FUNC0();
	while(1);
	FUNC1(SIGBUS, current);
}