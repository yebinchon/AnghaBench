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
 int /*<<< orphan*/  PT_SYSCFG ; 
 unsigned long TRACE_BITS ; 
 unsigned long FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ,unsigned long) ; 

void FUNC2(struct task_struct *child)
{
	unsigned long tmp;
	/* make sure the single step bit is not set. */
	tmp = FUNC0(child, PT_SYSCFG) & ~TRACE_BITS;
	FUNC1(child, PT_SYSCFG, tmp);
}