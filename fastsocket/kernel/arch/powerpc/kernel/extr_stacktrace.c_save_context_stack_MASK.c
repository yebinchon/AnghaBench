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
struct stack_trace {unsigned long* entries; scalar_t__ nr_entries; scalar_t__ max_entries; int /*<<< orphan*/  skip; } ;

/* Variables and functions */
 size_t STACK_FRAME_LR_SAVE ; 
 int /*<<< orphan*/  STACK_FRAME_OVERHEAD ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,struct task_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct stack_trace *trace, unsigned long sp,
			struct task_struct *tsk, int savesched)
{
	for (;;) {
		unsigned long *stack = (unsigned long *) sp;
		unsigned long newsp, ip;

		if (!FUNC1(sp, tsk, STACK_FRAME_OVERHEAD))
			return;

		newsp = stack[0];
		ip = stack[STACK_FRAME_LR_SAVE];

		if (savesched || !FUNC0(ip)) {
			if (!trace->skip)
				trace->entries[trace->nr_entries++] = ip;
			else
				trace->skip--;
		}

		if (trace->nr_entries >= trace->max_entries)
			return;

		sp = newsp;
	}
}