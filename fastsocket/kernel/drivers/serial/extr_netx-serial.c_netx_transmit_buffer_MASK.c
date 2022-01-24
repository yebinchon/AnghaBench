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
struct uart_port {TYPE_2__ icount; scalar_t__ membase; scalar_t__ x_char; TYPE_1__* state; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int FR_TXFF ; 
 scalar_t__ UART_DR ; 
 scalar_t__ UART_FR ; 
 int UART_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct circ_buf*) ; 
 scalar_t__ FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void FUNC5(struct uart_port *port)
{
	struct circ_buf *xmit = &port->state->xmit;

	if (port->x_char) {
		FUNC4(port->x_char, port->membase + UART_DR);
		port->icount.tx++;
		port->x_char = 0;
		return;
	}

	if (FUNC3(port) || FUNC2(xmit)) {
		FUNC0(port);
		return;
	}

	do {
		/* send xmit->buf[xmit->tail]
		 * out the port here */
		FUNC4(xmit->buf[xmit->tail], port->membase + UART_DR);
		xmit->tail = (xmit->tail + 1) &
		         (UART_XMIT_SIZE - 1);
		port->icount.tx++;
		if (FUNC2(xmit))
			break;
	} while (!(FUNC1(port->membase + UART_FR) & FR_TXFF));

	if (FUNC2(xmit))
		FUNC0(port);
}