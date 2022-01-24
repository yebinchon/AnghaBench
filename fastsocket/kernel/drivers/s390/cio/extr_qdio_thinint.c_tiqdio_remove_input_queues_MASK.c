#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  next; int /*<<< orphan*/  prev; } ;
struct qdio_q {TYPE_1__ entry; } ;
struct qdio_irq {int nr_input_qs; struct qdio_q** input_qs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  tiq_list_lock ; 

void FUNC5(struct qdio_irq *irq_ptr)
{
	struct qdio_q *q;

	FUNC0(irq_ptr->nr_input_qs < 1);
	q = irq_ptr->input_qs[0];
	/* if establish triggered an error */
	if (!q || !q->entry.prev || !q->entry.next)
		return;

	FUNC2(&tiq_list_lock);
	FUNC1(&q->entry);
	FUNC3(&tiq_list_lock);
	FUNC4();
}