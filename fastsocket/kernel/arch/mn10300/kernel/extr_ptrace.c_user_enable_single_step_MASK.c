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
struct TYPE_2__ {int /*<<< orphan*/  epsw; } ;
struct user {TYPE_1__ regs; } ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 long EPSW_T ; 
 long FUNC0 (struct task_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,unsigned long,long) ; 

void FUNC2(struct task_struct *child)
{
#ifndef CONFIG_MN10300_USING_JTAG
	struct user *dummy = NULL;
	long tmp;

	tmp = FUNC0(child, (unsigned long) &dummy->regs.epsw);
	tmp |= EPSW_T;
	FUNC1(child, (unsigned long) &dummy->regs.epsw, tmp);
#endif
}