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
struct TYPE_3__ {struct TYPE_3__* next; } ;
struct uart_sio_port {TYPE_1__ list; } ;
struct irq_info {int /*<<< orphan*/  lock; TYPE_1__* head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct irq_info *i, struct uart_sio_port *up)
{
	FUNC3(&i->lock);

	if (!FUNC2(i->head)) {
		if (i->head == &up->list)
			i->head = i->head->next;
		FUNC1(&up->list);
	} else {
		FUNC0(i->head != &up->list);
		i->head = NULL;
	}

	FUNC4(&i->lock);
}