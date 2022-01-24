#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* queue_start_poll ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  queue_irq_state; } ;
struct TYPE_5__ {TYPE_1__ in; } ;
struct qdio_q {int /*<<< orphan*/  tasklet; TYPE_3__* irq_ptr; int /*<<< orphan*/  nr; TYPE_2__ u; } ;
struct qdio_irq {int nr_input_qs; struct qdio_q** input_qs; } ;
struct TYPE_6__ {int /*<<< orphan*/  dsci; int /*<<< orphan*/  int_parm; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QDIO_QUEUE_IRQS_DISABLED ; 
 scalar_t__ FUNC0 (struct qdio_irq*) ; 
 int /*<<< orphan*/  int_discarded ; 
 int /*<<< orphan*/  FUNC1 (struct qdio_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_irq*) ; 
 int /*<<< orphan*/  FUNC3 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC8(struct qdio_irq *irq)
{
	int i;
	struct qdio_q *q;

	for (i = 0; i < irq->nr_input_qs; ++i) {
		q = irq->input_qs[i];

		if (!FUNC2(irq) &&
		    FUNC0(irq))
			FUNC7(q->irq_ptr->dsci, 0);

		if (q->u.in.queue_start_poll) {
			/* skip if polling is enabled or already in work */
			if (FUNC6(QDIO_QUEUE_IRQS_DISABLED,
					     &q->u.in.queue_irq_state)) {
				FUNC1(q, int_discarded);
				continue;
			}

			/* avoid dsci clear here, done after processing */
			q->u.in.queue_start_poll(q->irq_ptr->cdev, q->nr,
						 q->irq_ptr->int_parm);
		} else {
			if (!FUNC3(q))
				FUNC7(q->irq_ptr->dsci, 0);

			/*
			 * Call inbound processing but not directly
			 * since that could starve other thinint queues.
			 */
			FUNC5(&q->tasklet);
		}
	}
}