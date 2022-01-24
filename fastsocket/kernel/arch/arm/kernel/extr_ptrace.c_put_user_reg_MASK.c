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
struct pt_regs {long* uregs; } ;

/* Variables and functions */
 int EINVAL ; 
 struct pt_regs* FUNC0 (struct task_struct*) ; 
 scalar_t__ FUNC1 (struct pt_regs*) ; 

__attribute__((used)) static inline int
FUNC2(struct task_struct *task, int offset, long data)
{
	struct pt_regs newregs, *regs = FUNC0(task);
	int ret = -EINVAL;

	newregs = *regs;
	newregs.uregs[offset] = data;

	if (FUNC1(&newregs)) {
		regs->uregs[offset] = data;
		ret = 0;
	}

	return ret;
}