#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct TYPE_4__ {TYPE_1__* context; } ;
struct pebs_tracer {TYPE_2__ ds; } ;
struct TYPE_3__ {scalar_t__ cpu; struct task_struct* task; } ;

/* Variables and functions */
 int EPERM ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (struct pebs_tracer*) ; 
 int /*<<< orphan*/  FUNC1 (struct pebs_tracer*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 () ; 

int FUNC5(struct pebs_tracer *tracer)
{
	struct task_struct *task;
	unsigned long irq;
	int error;

	if (!tracer)
		return 0;

	task = tracer->ds.context->task;

	FUNC3(irq);

	error = -EPERM;
	if (!task &&
	    (tracer->ds.context->cpu != FUNC4()))
		goto out;

	error = -EPERM;
	if (task && (task != current))
		goto out;

	FUNC1(tracer);
	FUNC0(tracer);

	error = 0;
 out:
	FUNC2(irq);
	return error;
}