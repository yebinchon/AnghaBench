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
struct pt_regs {int cp0_cause; unsigned long long cp0_epc; } ;
struct TYPE_2__ {int /*<<< orphan*/  toea; int /*<<< orphan*/  ccfg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* tx4939_ccfgptr ; 

__attribute__((used)) static int FUNC6(struct pt_regs *regs, int is_fixup)
{
	int data = regs->cp0_cause & 4;
	FUNC1();
	FUNC3("%cBE exception at %#lx\n",
	       data ? 'D' : 'I', regs->cp0_epc);
	FUNC3("ccfg:%llx, toea:%llx\n",
	       (unsigned long long)FUNC0(&tx4939_ccfgptr->ccfg),
	       (unsigned long long)FUNC0(&tx4939_ccfgptr->toea));
#ifdef CONFIG_PCI
	tx4927_report_pcic_status();
#endif
	FUNC4(regs);
	FUNC2("BusError!");
}