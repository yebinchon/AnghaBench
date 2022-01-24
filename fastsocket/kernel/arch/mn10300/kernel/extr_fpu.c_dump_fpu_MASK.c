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
struct TYPE_2__ {int /*<<< orphan*/  fpu_state; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int dummy; } ;
typedef  int /*<<< orphan*/  elf_fpregset_t ;

/* Variables and functions */
 struct task_struct* current ; 
 int FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

int FUNC3(struct pt_regs *regs, elf_fpregset_t *fpreg)
{
	struct task_struct *tsk = current;
	int fpvalid;

	fpvalid = FUNC0(tsk);
	if (fpvalid) {
		FUNC2(tsk);
		FUNC1(fpreg, &tsk->thread.fpu_state, sizeof(*fpreg));
	}

	return fpvalid;
}