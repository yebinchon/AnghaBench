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
struct TYPE_3__ {TYPE_2__* context; } ;
struct bts_tracer {TYPE_1__ ds; } ;
struct TYPE_4__ {struct bts_tracer* bts_master; struct task_struct* task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct bts_tracer*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

__attribute__((used)) static void FUNC5(struct bts_tracer *tracer)
{
	struct task_struct *task;

	task = tracer->ds.context->task;

	FUNC0(tracer->ds.context->bts_master != tracer);
	tracer->ds.context->bts_master = NULL;

	/* Make sure tracing stopped and the tracer is not in use. */
	if (task && (task != current))
		FUNC4(task);

	FUNC1(tracer->ds.context);
	FUNC3(task);

	FUNC2(tracer);
}