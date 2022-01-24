#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  tx; } ;
struct uart_port {TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,scalar_t__) ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	struct circ_buf *xmit = &port->state->xmit;
	unsigned int count;

	if (port->x_char) {
		FUNC0();
		FUNC1(port, port->x_char);
		port->icount.tx++;
		port->x_char = 0;
		return IRQ_HANDLED;
	}

	if (FUNC5(port) || FUNC4(xmit)) {
		FUNC2(port);
		return IRQ_HANDLED;
	}

	count = 16;	/* fifo size */
	while (!FUNC4(xmit) && (count-- > 0)) {
		FUNC0();
		FUNC1(port, xmit->buf[xmit->tail]);

		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;
	}

	if (FUNC3(xmit) < WAKEUP_CHARS)
		FUNC6(port);

	if (FUNC4(xmit))
		FUNC2(port);

	return IRQ_HANDLED;
}