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
struct task_struct {int dummy; } ;
struct siginfo {int dummy; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRAP_BRKPT ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,struct pt_regs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct siginfo*) ; 

void FUNC1(struct task_struct *tsk,
				struct pt_regs *regs,
				struct siginfo *info)
{
	FUNC0(tsk, regs, 0, TRAP_BRKPT, info);
}