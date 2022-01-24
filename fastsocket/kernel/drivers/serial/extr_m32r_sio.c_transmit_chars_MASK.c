#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  tx; } ;
struct TYPE_8__ {int fifosize; TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct uart_sio_port {TYPE_3__ port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  UART_LSR ; 
 int UART_LSR_THRE ; 
 int /*<<< orphan*/  UART_TX ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (struct uart_sio_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_sio_port*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (struct circ_buf*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC8(struct uart_sio_port *up)
{
	struct circ_buf *xmit = &up->port.state->xmit;
	int count;

	if (up->port.x_char) {
#ifndef CONFIG_SERIAL_M32R_PLDSIO	/* XXX */
		FUNC3(up, UART_TX, up->port.x_char);
#endif
		up->port.icount.tx++;
		up->port.x_char = 0;
		return;
	}
	if (FUNC5(xmit) || FUNC6(&up->port)) {
		FUNC1(&up->port);
		return;
	}

	count = up->port.fifosize;
	do {
		FUNC3(up, UART_TX, xmit->buf[xmit->tail]);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		up->port.icount.tx++;
		if (FUNC5(xmit))
			break;
		while (!(FUNC2(up, UART_LSR) & UART_LSR_THRE));

	} while (--count > 0);

	if (FUNC4(xmit) < WAKEUP_CHARS)
		FUNC7(&up->port);

	FUNC0("THRE...");

	if (FUNC5(xmit))
		FUNC1(&up->port);
}