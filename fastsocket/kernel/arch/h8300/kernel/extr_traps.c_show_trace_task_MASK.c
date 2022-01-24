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
struct TYPE_2__ {scalar_t__ esp0; } ;
struct task_struct {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*,unsigned long*) ; 

void FUNC1(struct task_struct *tsk)
{
	FUNC0(tsk,(unsigned long *)tsk->thread.esp0);
}