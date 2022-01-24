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
struct ehca_cpu_comp_task {int /*<<< orphan*/  task_lock; scalar_t__ cq_jobs; struct task_struct* task; } ;
struct ehca_comp_pool {int /*<<< orphan*/  cpu_comp_tasks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 struct ehca_cpu_comp_task* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct ehca_comp_pool *pool,
			      int cpu)
{
	struct ehca_cpu_comp_task *cct;
	struct task_struct *task;
	unsigned long flags_cct;

	cct = FUNC1(pool->cpu_comp_tasks, cpu);

	FUNC2(&cct->task_lock, flags_cct);

	task = cct->task;
	cct->task = NULL;
	cct->cq_jobs = 0;

	FUNC3(&cct->task_lock, flags_cct);

	if (task)
		FUNC0(task);
}