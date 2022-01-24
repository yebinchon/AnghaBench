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
struct TYPE_3__ {int /*<<< orphan*/  tx; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct sdio_uart_port {TYPE_2__* tty; TYPE_1__ icount; scalar_t__ x_char; struct circ_buf xmit; } ;
struct TYPE_4__ {scalar_t__ hw_stopped; scalar_t__ stopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_TX ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 scalar_t__ FUNC0 (struct circ_buf*) ; 
 scalar_t__ FUNC1 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_uart_port*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(struct sdio_uart_port *port)
{
	struct circ_buf *xmit = &port->xmit;
	int count;

	if (port->x_char) {
		FUNC2(port, UART_TX, port->x_char);
		port->icount.tx++;
		port->x_char = 0;
		return;
	}
	if (FUNC1(xmit) || port->tty->stopped || port->tty->hw_stopped) {
		FUNC3(port);
		return;
	}

	count = 16;
	do {
		FUNC2(port, UART_TX, xmit->buf[xmit->tail]);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;
		if (FUNC1(xmit))
			break;
	} while (--count > 0);

	if (FUNC0(xmit) < WAKEUP_CHARS)
		FUNC4(port->tty);

	if (FUNC1(xmit))
		FUNC3(port);
}