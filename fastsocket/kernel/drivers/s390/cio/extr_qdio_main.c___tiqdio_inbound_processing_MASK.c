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
struct qdio_q {int /*<<< orphan*/  tasklet; TYPE_1__* irq_ptr; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ QDIO_IRQ_STATE_STOPPED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC3 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC4 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC5 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC6 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC7 (struct qdio_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tasklet_inbound ; 
 int /*<<< orphan*/  tasklet_inbound_resched ; 
 int /*<<< orphan*/  tasklet_inbound_resched2 ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct qdio_q *q)
{
	FUNC7(q, tasklet_inbound);
	FUNC6(q);

	/*
	 * The interrupt could be caused by a PCI request. Check the
	 * PCI capable outbound queues.
	 */
	FUNC1(q);

	if (!FUNC3(q))
		return;

	FUNC4(q);

	if (!FUNC2(q)) {
		FUNC7(q, tasklet_inbound_resched);
		if (FUNC0(q->irq_ptr->state != QDIO_IRQ_STATE_STOPPED)) {
			FUNC8(&q->tasklet);
			return;
		}
	}

	FUNC5(q);
	/*
	 * We need to check again to not lose initiative after
	 * resetting the ACK state.
	 */
	if (!FUNC2(q)) {
		FUNC7(q, tasklet_inbound_resched2);
		if (FUNC0(q->irq_ptr->state != QDIO_IRQ_STATE_STOPPED))
			FUNC8(&q->tasklet);
	}
}