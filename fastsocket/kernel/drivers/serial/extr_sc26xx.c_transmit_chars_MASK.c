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
struct uart_port {TYPE_1__ icount; TYPE_2__* state; } ;
struct circ_buf {size_t tail; int /*<<< orphan*/ * buf; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMR_TXRDY ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SR ; 
 int SR_TXRDY ; 
 int /*<<< orphan*/  THR ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port)
{
	struct circ_buf *xmit;

	if (!port->state)
		return;

	xmit = &port->state->xmit;
	if (FUNC4(xmit) || FUNC5(port)) {
		FUNC2(port, IMR_TXRDY);
		return;
	}
	while (!FUNC4(xmit)) {
		if (!(FUNC0(port, SR) & SR_TXRDY))
			break;

		FUNC1(port, THR, xmit->buf[xmit->tail]);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;
	}
	if (FUNC3(xmit) < WAKEUP_CHARS)
		FUNC6(port);
}