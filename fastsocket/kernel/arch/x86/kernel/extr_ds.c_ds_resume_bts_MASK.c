#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned long debugctlmsr; } ;
struct task_struct {TYPE_1__ thread; } ;
struct TYPE_10__ {TYPE_4__* context; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {TYPE_2__ ds; } ;
struct bts_tracer {TYPE_5__ ds; TYPE_3__ trace; int /*<<< orphan*/  flags; } ;
struct TYPE_9__ {int cpu; struct task_struct* task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (struct bts_tracer*) ; 
 unsigned long FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,unsigned long) ; 

void FUNC6(struct bts_tracer *tracer)
{
	struct task_struct *task;
	unsigned long debugctlmsr;
	int cpu;

	if (!tracer)
		return;

	tracer->flags = tracer->trace.ds.flags;

	task = tracer->ds.context->task;
	cpu  = tracer->ds.context->cpu;

	FUNC0(!task && FUNC3());

	debugctlmsr = (task ?
		       task->thread.debugctlmsr :
		       FUNC2(cpu));
	debugctlmsr |= FUNC1(tracer);

	if (task)
		FUNC5(task, debugctlmsr);
	else
		FUNC4(cpu, debugctlmsr);
}