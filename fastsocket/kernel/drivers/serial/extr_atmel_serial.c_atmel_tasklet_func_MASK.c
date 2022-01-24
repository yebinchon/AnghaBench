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
struct TYPE_4__ {int /*<<< orphan*/  dsr; int /*<<< orphan*/  rng; } ;
struct uart_port {int /*<<< orphan*/  lock; TYPE_3__* state; TYPE_1__ icount; } ;
struct atmel_uart_port {unsigned int irq_status; unsigned int irq_status_prev; } ;
struct TYPE_5__ {int /*<<< orphan*/  delta_msr_wait; } ;
struct TYPE_6__ {TYPE_2__ port; } ;

/* Variables and functions */
 unsigned int ATMEL_US_CTS ; 
 unsigned int ATMEL_US_DCD ; 
 unsigned int ATMEL_US_DSR ; 
 unsigned int ATMEL_US_RI ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 scalar_t__ FUNC4 (struct uart_port*) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct atmel_uart_port* FUNC8 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(unsigned long data)
{
	struct uart_port *port = (struct uart_port *)data;
	struct atmel_uart_port *atmel_port = FUNC8(port);
	unsigned int status;
	unsigned int status_change;

	/* The interrupt handler does not take the lock */
	FUNC6(&port->lock);

	if (FUNC5(port))
		FUNC3(port);
	else
		FUNC2(port);

	status = atmel_port->irq_status;
	status_change = status ^ atmel_port->irq_status_prev;

	if (status_change & (ATMEL_US_RI | ATMEL_US_DSR
				| ATMEL_US_DCD | ATMEL_US_CTS)) {
		/* TODO: All reads to CSR will clear these interrupts! */
		if (status_change & ATMEL_US_RI)
			port->icount.rng++;
		if (status_change & ATMEL_US_DSR)
			port->icount.dsr++;
		if (status_change & ATMEL_US_DCD)
			FUNC10(port, !(status & ATMEL_US_DCD));
		if (status_change & ATMEL_US_CTS)
			FUNC9(port, !(status & ATMEL_US_CTS));

		FUNC11(&port->state->port.delta_msr_wait);

		atmel_port->irq_status_prev = status;
	}

	if (FUNC4(port))
		FUNC0(port);
	else
		FUNC1(port);

	FUNC7(&port->lock);
}