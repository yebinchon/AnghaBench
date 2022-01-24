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
struct ehca_cpu_comp_task {struct task_struct* task; int /*<<< orphan*/  wait_queue; int /*<<< orphan*/  cq_list; int /*<<< orphan*/  task_lock; } ;
struct ehca_comp_pool {int /*<<< orphan*/  cpu_comp_tasks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  comp_task ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct task_struct* FUNC2 (int /*<<< orphan*/ ,struct ehca_cpu_comp_task*,char*,int) ; 
 struct ehca_cpu_comp_task* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct task_struct *FUNC5(struct ehca_comp_pool *pool,
					    int cpu)
{
	struct ehca_cpu_comp_task *cct;

	cct = FUNC3(pool->cpu_comp_tasks, cpu);
	FUNC4(&cct->task_lock);
	FUNC0(&cct->cq_list);
	FUNC1(&cct->wait_queue);
	cct->task = FUNC2(comp_task, cct, "ehca_comp/%d", cpu);

	return cct->task;
}