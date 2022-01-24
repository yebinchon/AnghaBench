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
struct uart_8250_port {TYPE_1__ list; } ;
struct irq_info {int /*<<< orphan*/  node; TYPE_1__* head; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_info*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct irq_info *i, struct uart_8250_port *up)
{
	FUNC5(&i->lock);

	if (!FUNC4(i->head)) {
		if (i->head == &up->list)
			i->head = i->head->next;
		FUNC3(&up->list);
	} else {
		FUNC0(i->head != &up->list);
		i->head = NULL;
	}
	FUNC6(&i->lock);
	/* List empty so throw away the hash node */
	if (i->head == NULL) {
		FUNC1(&i->node);
		FUNC2(i);
	}
}