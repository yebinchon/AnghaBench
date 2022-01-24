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
struct TYPE_2__ {int irq; } ;
struct uart_sio_port {TYPE_1__ port; int /*<<< orphan*/  list; } ;
struct irq_info {int /*<<< orphan*/  lock; int /*<<< orphan*/ * head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct irq_info* irq_lists ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  m32r_sio_interrupt ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int,char*,struct irq_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_info*,struct uart_sio_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct uart_sio_port *up)
{
	struct irq_info *i = irq_lists + up->port.irq;
	int ret, irq_flags = 0;

	FUNC4(&i->lock);

	if (i->head) {
		FUNC1(&up->list, i->head);
		FUNC5(&i->lock);

		ret = 0;
	} else {
		FUNC0(&up->list);
		i->head = &up->list;
		FUNC5(&i->lock);

		ret = FUNC2(up->port.irq, m32r_sio_interrupt,
				  irq_flags, "SIO0-RX", i);
		ret |= FUNC2(up->port.irq + 1, m32r_sio_interrupt,
				  irq_flags, "SIO0-TX", i);
		if (ret < 0)
			FUNC3(i, up);
	}

	return ret;
}