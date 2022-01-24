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
struct pt_regs {unsigned long ip; unsigned long sp; int flags; int /*<<< orphan*/  ss; int /*<<< orphan*/  cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  USER_DS ; 
 int /*<<< orphan*/  __USER_CS ; 
 int /*<<< orphan*/  __USER_DS ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  ds ; 
 int /*<<< orphan*/  es ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  old_rsp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct pt_regs *regs, unsigned long new_ip, unsigned long new_sp)
{
	FUNC2(fs, 0);
	FUNC2(es, 0);
	FUNC2(ds, 0);
	FUNC1(0);
	regs->ip		= new_ip;
	regs->sp		= new_sp;
	FUNC3(old_rsp, new_sp);
	regs->cs		= __USER_CS;
	regs->ss		= __USER_DS;
	regs->flags		= 0x200;
	FUNC4(USER_DS);
	/*
	 * Free the old FP and other extended state
	 */
	FUNC0(current);
}