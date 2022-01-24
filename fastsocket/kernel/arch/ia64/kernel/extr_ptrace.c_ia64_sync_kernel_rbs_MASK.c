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
typedef  int /*<<< orphan*/  val ;
struct task_struct {int dummy; } ;
struct switch_stack {int dummy; } ;

/* Variables and functions */
 long EIO ; 
 int FUNC0 (struct task_struct*,unsigned long,unsigned long*,int,int /*<<< orphan*/ ) ; 
 long FUNC1 (struct task_struct*,struct switch_stack*,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static long
FUNC2 (struct task_struct *child, struct switch_stack *sw,
		unsigned long user_rbs_start, unsigned long user_rbs_end)
{
	unsigned long addr, val;
	long ret;

	/* now copy word for word from user rbs to kernel rbs: */
	for (addr = user_rbs_start; addr < user_rbs_end; addr += 8) {
		if (FUNC0(child, addr, &val, sizeof(val), 0)
				!= sizeof(val))
			return -EIO;

		ret = FUNC1(child, sw, user_rbs_end, addr, val);
		if (ret < 0)
			return ret;
	}
	return 0;
}