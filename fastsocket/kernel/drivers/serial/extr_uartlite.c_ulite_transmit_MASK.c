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
 int UART_XMIT_SIZE ; 
 int ULITE_STATUS_TXFULL ; 
 scalar_t__ ULITE_TX ; 
 scalar_t__ WAKEUP_CHARS ; 
 scalar_t__ FUNC0 (struct circ_buf*) ; 
 scalar_t__ FUNC1 (struct circ_buf*) ; 
 scalar_t__ FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct uart_port *port, int stat)
{
	struct circ_buf *xmit  = &port->state->xmit;

	if (stat & ULITE_STATUS_TXFULL)
		return 0;

	if (port->x_char) {
		FUNC4(port->x_char, port->membase + ULITE_TX);
		port->x_char = 0;
		port->icount.tx++;
		return 1;
	}

	if (FUNC1(xmit) || FUNC2(port))
		return 0;

	FUNC4(xmit->buf[xmit->tail], port->membase + ULITE_TX);
	xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE-1);
	port->icount.tx++;

	/* wake up */
	if (FUNC0(xmit) < WAKEUP_CHARS)
		FUNC3(port);

	return 1;
}