#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {unsigned long ip; unsigned long sp; int /*<<< orphan*/  cs; void* ss; void* es; void* ds; scalar_t__ fs; } ;
struct TYPE_3__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  USER_DS ; 
 int /*<<< orphan*/  __USER_CS ; 
 void* __USER_DS ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct pt_regs *regs, unsigned long new_ip, unsigned long new_sp)
{
	int cpu;

	FUNC5(regs, 0);

	regs->fs		= 0;
	FUNC4(USER_DS);
	regs->ds		= __USER_DS;
	regs->es		= __USER_DS;
	regs->ss		= __USER_DS;
	regs->cs		= __USER_CS;
	regs->ip		= new_ip;
	regs->sp		= new_sp;

	cpu = FUNC1();
	FUNC2(cpu, current->mm);
	FUNC3();

	/*
	 * Free the old FP and other extended state
	 */
	FUNC0(current);
}