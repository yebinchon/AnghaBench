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
typedef  scalar_t__ ftrace_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  MCOUNT_INSN_SIZE ; 
 int /*<<< orphan*/  ftrace_call ; 
 unsigned char* FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (unsigned long,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(ftrace_func_t func)
{
	int ret;
	unsigned long pc, old;
	unsigned char *new;

	pc = (unsigned long)&ftrace_call;
	FUNC2(&old, &ftrace_call, MCOUNT_INSN_SIZE);
	new = FUNC0(pc, (unsigned long)func);
	ret = FUNC1(pc, (unsigned char *)&old, new);
	return ret;
}