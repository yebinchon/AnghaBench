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
struct uart_port {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ PORT_SCI ; 
 int /*<<< orphan*/  SCxSR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 scalar_t__ FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,void*) ; 
 int /*<<< orphan*/  FUNC7 (int,void*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *ptr)
{
	struct uart_port *port = ptr;

	/* Handle errors */
	if (port->type == PORT_SCI) {
		if (FUNC2(port)) {
			/* discard character in rx buffer */
			FUNC4(port, SCxSR);
			FUNC5(port, SCxSR, FUNC1(port));
		}
	} else {
		FUNC3(port);
		FUNC6(irq, ptr);
	}

	FUNC5(port, SCxSR, FUNC0(port));

	/* Kick the transmission */
	FUNC7(irq, ptr);

	return IRQ_HANDLED;
}