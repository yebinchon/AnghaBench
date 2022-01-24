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
struct pebs_tracer {TYPE_1__ ds; } ;
struct TYPE_4__ {struct pebs_tracer* pebs_master; struct task_struct* task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pebs_tracer*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static void FUNC4(struct pebs_tracer *tracer)
{
	struct task_struct *task;

	task = tracer->ds.context->task;

	FUNC0(tracer->ds.context->pebs_master != tracer);
	tracer->ds.context->pebs_master = NULL;

	FUNC1(tracer->ds.context);
	FUNC3(task);

	FUNC2(tracer);
}