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
struct pt_regs {unsigned int ARM_fp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 struct task_struct* current ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 unsigned int FUNC3 (struct pt_regs*) ; 
 unsigned int FUNC4 (struct task_struct*) ; 
 scalar_t__ FUNC5 (unsigned int) ; 

__attribute__((used)) static void FUNC6(struct pt_regs *regs, struct task_struct *tsk)
{
	unsigned int fp, mode;
	int ok = 1;

	FUNC2("Backtrace: ");

	if (!tsk)
		tsk = current;

	if (regs) {
		fp = regs->ARM_fp;
		mode = FUNC3(regs);
	} else if (tsk != current) {
		fp = FUNC4(tsk);
		mode = 0x10;
	} else {
		asm("mov %0, fp" : "=r" (fp) : : "cc");
		mode = 0x10;
	}

	if (!fp) {
		FUNC2("no frame pointer");
		ok = 0;
	} else if (FUNC5(fp)) {
		FUNC2("invalid frame pointer 0x%08x", fp);
		ok = 0;
	} else if (fp < (unsigned long)FUNC1(tsk))
		FUNC2("frame pointer underflow");
	FUNC2("\n");

	if (ok)
		FUNC0(fp, mode);
}