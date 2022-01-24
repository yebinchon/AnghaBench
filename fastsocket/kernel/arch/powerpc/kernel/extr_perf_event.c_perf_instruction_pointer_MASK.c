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
struct pt_regs {unsigned long nip; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPRN_SIAR ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct pt_regs*) ; 
 int FUNC2 (struct pt_regs*) ; 
 scalar_t__ FUNC3 (struct pt_regs*) ; 

unsigned long FUNC4(struct pt_regs *regs)
{
	bool use_siar = FUNC2(regs);

	if (use_siar && FUNC3(regs))
		return FUNC0(SPRN_SIAR) + FUNC1(regs);
	else if (use_siar)
		return 0;		// no valid instruction pointer
	else
		return regs->nip;
}