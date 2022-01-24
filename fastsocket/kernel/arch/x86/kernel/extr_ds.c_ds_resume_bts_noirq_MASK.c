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
struct TYPE_10__ {unsigned long debugctlmsr; } ;
struct task_struct {TYPE_5__ thread; } ;
struct TYPE_9__ {TYPE_3__* context; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {TYPE_1__ ds; } ;
struct bts_tracer {TYPE_4__ ds; TYPE_2__ trace; int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {int cpu; struct task_struct* task; } ;

/* Variables and functions */
 int EPERM ; 
 unsigned long FUNC0 (struct bts_tracer*) ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,unsigned long) ; 

int FUNC7(struct bts_tracer *tracer)
{
	struct task_struct *task;
	unsigned long debugctlmsr, irq;
	int cpu, error = 0;

	if (!tracer)
		return 0;

	tracer->flags = tracer->trace.ds.flags;

	task = tracer->ds.context->task;
	cpu  = tracer->ds.context->cpu;

	FUNC3(irq);

	error = -EPERM;
	if (!task && (cpu != FUNC4()))
		goto out;

	debugctlmsr = (task ?
		       task->thread.debugctlmsr :
		       FUNC1());
	debugctlmsr |= FUNC0(tracer);

	if (task)
		FUNC6(task, debugctlmsr);
	else
		FUNC5(debugctlmsr);

	error = 0;
 out:
	FUNC2(irq);
	return error;
}