#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ehca_cq {int dummy; } ;
struct ehca_cpu_comp_task {int cq_jobs; int /*<<< orphan*/  task_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  cpu_comp_tasks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ehca_cq*,struct ehca_cpu_comp_task*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*) ; 
 struct ehca_cpu_comp_task* FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* pool ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct ehca_cq *__cq)
{
	int cpu_id;
	struct ehca_cpu_comp_task *cct;
	int cq_jobs;
	unsigned long flags;

	cpu_id = FUNC3(pool);
	FUNC0(!FUNC2(cpu_id));

	cct = FUNC4(pool->cpu_comp_tasks, cpu_id);
	FUNC0(!cct);

	FUNC5(&cct->task_lock, flags);
	cq_jobs = cct->cq_jobs;
	FUNC6(&cct->task_lock, flags);
	if (cq_jobs > 0) {
		cpu_id = FUNC3(pool);
		cct = FUNC4(pool->cpu_comp_tasks, cpu_id);
		FUNC0(!cct);
	}

	FUNC1(__cq, cct);
}