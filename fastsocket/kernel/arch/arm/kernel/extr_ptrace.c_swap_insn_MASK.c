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

/* Variables and functions */
 int FUNC0 (struct task_struct*,unsigned long,void*,int,int) ; 

__attribute__((used)) static int
FUNC1(struct task_struct *task, unsigned long addr,
	  void *old_insn, void *new_insn, int size)
{
	int ret;

	ret = FUNC0(task, addr, old_insn, size, 0);
	if (ret == size)
		ret = FUNC0(task, addr, new_insn, size, 1);
	return ret;
}