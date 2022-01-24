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
struct fnic {unsigned int raw_wq_count; unsigned int wq_copy_count; unsigned int rq_count; unsigned int cq_count; unsigned int intr_count; int /*<<< orphan*/ * intr; int /*<<< orphan*/ * cq; int /*<<< orphan*/ * rq; int /*<<< orphan*/ * wq_copy; int /*<<< orphan*/ * wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct fnic *fnic)
{
	unsigned int i;

	for (i = 0; i < fnic->raw_wq_count; i++)
		FUNC4(&fnic->wq[i]);

	for (i = 0; i < fnic->wq_copy_count; i++)
		FUNC3(&fnic->wq_copy[i]);

	for (i = 0; i < fnic->rq_count; i++)
		FUNC2(&fnic->rq[i]);

	for (i = 0; i < fnic->cq_count; i++)
		FUNC0(&fnic->cq[i]);

	for (i = 0; i < fnic->intr_count; i++)
		FUNC1(&fnic->intr[i]);
}