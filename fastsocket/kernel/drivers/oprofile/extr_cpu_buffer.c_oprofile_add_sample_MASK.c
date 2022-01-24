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
 unsigned long ESCAPE_CODE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,struct pt_regs* const,unsigned long,int) ; 
 scalar_t__ FUNC1 (struct pt_regs* const) ; 
 unsigned long FUNC2 (struct pt_regs* const) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs* const) ; 

void FUNC4(struct pt_regs * const regs, unsigned long event)
{
	int is_kernel;
	unsigned long pc;

	if (FUNC1(regs)) {
		is_kernel = !FUNC3(regs);
		pc = FUNC2(regs);
	} else {
		is_kernel = 0;    /* This value will not be used */
		pc = ESCAPE_CODE; /* as this causes an early return. */
	}

	FUNC0(pc, regs, event, is_kernel);
}