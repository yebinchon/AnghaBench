#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned long debugctlmsr; } ;
struct task_struct {TYPE_1__ thread; } ;
struct TYPE_6__ {TYPE_2__* context; } ;
struct bts_tracer {TYPE_3__ ds; scalar_t__ flags; } ;
struct TYPE_5__ {int cpu; struct task_struct* task; } ;

/* Variables and functions */
 unsigned long BTS_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,unsigned long) ; 

void FUNC5(struct bts_tracer *tracer)
{
	struct task_struct *task;
	unsigned long debugctlmsr;
	int cpu;

	if (!tracer)
		return;

	tracer->flags = 0;

	task = tracer->ds.context->task;
	cpu  = tracer->ds.context->cpu;

	FUNC0(!task && FUNC2());

	debugctlmsr = (task ?
		       task->thread.debugctlmsr :
		       FUNC1(cpu));
	debugctlmsr &= ~BTS_CONTROL;

	if (task)
		FUNC4(task, debugctlmsr);
	else
		FUNC3(cpu, debugctlmsr);
}