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
struct enic {unsigned int wq_count; unsigned int rq_count; unsigned int cq_count; unsigned int intr_count; int /*<<< orphan*/ * intr; int /*<<< orphan*/ * cq; int /*<<< orphan*/ * rq; int /*<<< orphan*/ * wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct enic *enic)
{
	unsigned int i;

	for (i = 0; i < enic->wq_count; i++)
		FUNC3(&enic->wq[i]);
	for (i = 0; i < enic->rq_count; i++)
		FUNC2(&enic->rq[i]);
	for (i = 0; i < enic->cq_count; i++)
		FUNC0(&enic->cq[i]);
	for (i = 0; i < enic->intr_count; i++)
		FUNC1(&enic->intr[i]);
}