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
struct ehca_cq {scalar_t__ nr_callbacks; int /*<<< orphan*/  task_lock; int /*<<< orphan*/  entry; } ;
struct ehca_cpu_comp_task {int /*<<< orphan*/  task_lock; int /*<<< orphan*/  wait_queue; int /*<<< orphan*/  cq_jobs; int /*<<< orphan*/  cq_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ehca_cq *__cq,
			      struct ehca_cpu_comp_task *cct)
{
	unsigned long flags;

	FUNC2(&cct->task_lock, flags);
	FUNC1(&__cq->task_lock);

	if (__cq->nr_callbacks == 0) {
		__cq->nr_callbacks++;
		FUNC0(&__cq->entry, &cct->cq_list);
		cct->cq_jobs++;
		FUNC5(&cct->wait_queue);
	} else
		__cq->nr_callbacks++;

	FUNC3(&__cq->task_lock);
	FUNC4(&cct->task_lock, flags);
}