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
struct TYPE_2__ {unsigned long error_code; int trap_no; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct pt_regs*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,struct pt_regs*) ; 
 scalar_t__ FUNC3 (struct pt_regs*) ; 

__attribute__((used)) static void FUNC4(int trapnr, int signr, char *str, char *fn_name,
		unsigned long error_code, struct pt_regs *regs, struct task_struct *tsk)
{
	FUNC2(fn_name, trapnr, signr, regs);
	tsk->thread.error_code = error_code;
	tsk->thread.trap_no = trapnr;

	if (FUNC3(regs))
		FUNC1(signr, tsk);

	FUNC0(str, regs, error_code);
}