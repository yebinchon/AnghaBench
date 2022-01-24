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
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int TX_MAX_COUNT ; 
 int /*<<< orphan*/  UART_TX ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (struct circ_buf*) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 scalar_t__ FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*) ; 

__attribute__((used)) static inline void FUNC6(struct uart_port *port)
{
	struct circ_buf *xmit;
	int max_count = TX_MAX_COUNT;

	xmit = &port->state->xmit;

	if (port->x_char) {
		FUNC1(port, UART_TX, port->x_char);
		port->icount.tx++;
		port->x_char = 0;
		return;
	}

	if (FUNC3(xmit) || FUNC4(port)) {
		FUNC0(port);
		return;
	}

	do {
		FUNC1(port, UART_TX, xmit->buf[xmit->tail]);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;
		if (FUNC3(xmit))
			break;
	} while (max_count-- > 0);

	if (FUNC2(xmit) < WAKEUP_CHARS)
		FUNC5(port);

	if (FUNC3(xmit))
		FUNC0(port);
}