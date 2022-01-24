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
struct uart_sio_port {TYPE_1__ port; } ;
struct irq_info {int /*<<< orphan*/ * head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct irq_info*) ; 
 struct irq_info* irq_lists ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_info*,struct uart_sio_port*) ; 

__attribute__((used)) static void FUNC4(struct uart_sio_port *up)
{
	struct irq_info *i = irq_lists + up->port.irq;

	FUNC0(i->head == NULL);

	if (FUNC2(i->head)) {
		FUNC1(up->port.irq, i);
		FUNC1(up->port.irq + 1, i);
	}

	FUNC3(i, up);
}