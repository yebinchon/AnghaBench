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
struct task_struct {scalar_t__ state; } ;
struct stackframe {unsigned long pc; scalar_t__ lr; int /*<<< orphan*/  sp; int /*<<< orphan*/  fp; } ;

/* Variables and functions */
 scalar_t__ TASK_RUNNING ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 unsigned long FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int FUNC4 (struct stackframe*) ; 

unsigned long FUNC5(struct task_struct *p)
{
	struct stackframe frame;
	int count = 0;
	if (!p || p == current || p->state == TASK_RUNNING)
		return 0;

	frame.fp = FUNC1(p);
	frame.sp = FUNC3(p);
	frame.lr = 0;			/* recovered from the stack */
	frame.pc = FUNC2(p);
	do {
		int ret = FUNC4(&frame);
		if (ret < 0)
			return 0;
		if (!FUNC0(frame.pc))
			return frame.pc;
	} while (count ++ < 16);
	return 0;
}