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
struct TYPE_4__ {int /*<<< orphan*/  timer; scalar_t__ pci_out_enabled; } ;
struct TYPE_5__ {TYPE_1__ out; } ;
struct qdio_q {int /*<<< orphan*/  tasklet; TYPE_3__* irq_ptr; TYPE_2__ u; int /*<<< orphan*/  nr_buf_used; } ;
struct TYPE_6__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HZ ; 
 scalar_t__ QDIO_IQDIO_POLL_LVL ; 
 scalar_t__ QDIO_IQDIO_QFMT ; 
 scalar_t__ QDIO_IRQ_STATE_STOPPED ; 
 scalar_t__ QDIO_ZFCP_QFMT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC5 (struct qdio_q*) ; 
 scalar_t__ FUNC6 (struct qdio_q*) ; 
 scalar_t__ FUNC7 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC8 (struct qdio_q*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct qdio_q*) ; 
 int /*<<< orphan*/  tasklet_outbound ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct qdio_q *q)
{
	FUNC8(q, tasklet_outbound);
	FUNC0(FUNC1(&q->nr_buf_used) < 0);

	if (FUNC7(q))
		FUNC5(q);

	if (FUNC9(q) == QDIO_ZFCP_QFMT)
		if (!FUNC4(q) && !FUNC6(q))
			goto sched;

	if ((FUNC9(q) == QDIO_IQDIO_QFMT) &&
	    (FUNC1(&q->nr_buf_used)) > QDIO_IQDIO_POLL_LVL)
		goto sched;

	if (q->u.out.pci_out_enabled)
		return;

	/*
	 * Now we know that queue type is either qeth without pci enabled
	 * or HiperSockets. Make sure buffer switch from PRIMED to EMPTY
	 * is noticed and outbound_handler is called after some time.
	 */
	if (FUNC6(q))
		FUNC2(&q->u.out.timer);
	else
		if (!FUNC11(&q->u.out.timer))
			FUNC3(&q->u.out.timer, jiffies + 10 * HZ);
	return;

sched:
	if (FUNC12(q->irq_ptr->state == QDIO_IRQ_STATE_STOPPED))
		return;
	FUNC10(&q->tasklet);
}