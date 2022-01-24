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
 int /*<<< orphan*/  TIF_SINGLESTEP ; 
 int /*<<< orphan*/  TIF_SYSCALL_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,int) ; 

void FUNC3(struct pt_regs *regs)
{
	int step;

	FUNC0(regs);

	step = FUNC1(TIF_SINGLESTEP);
	if (step || FUNC1(TIF_SYSCALL_TRACE))
		FUNC2(regs, step);
}