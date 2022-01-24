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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 

void FUNC2(unsigned long data)
{
	struct qdio_q *q = (struct qdio_q *)data;

	if (FUNC1(q->irq_ptr->state == QDIO_IRQ_STATE_STOPPED))
		return;
	FUNC0(&q->tasklet);
}