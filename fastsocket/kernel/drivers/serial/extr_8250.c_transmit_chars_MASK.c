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
struct TYPE_8__ {TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct uart_8250_port {int tx_loadsz; TYPE_3__ port; } ;
struct circ_buf {size_t tail; int /*<<< orphan*/ * buf; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  UART_TX ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_8250_port*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct circ_buf*) ; 
 scalar_t__ FUNC6 (struct circ_buf*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC9(struct uart_8250_port *up)
{
	struct circ_buf *xmit = &up->port.state->xmit;
	int count;

	if (up->port.x_char) {
		FUNC4(up, UART_TX, up->port.x_char);
		up->port.icount.tx++;
		up->port.x_char = 0;
		return;
	}
	if (FUNC7(&up->port)) {
		FUNC2(&up->port);
		return;
	}
	if (FUNC6(xmit)) {
		FUNC1(up);
		return;
	}

	count = up->tx_loadsz;
	do {
		FUNC3(up, UART_TX, xmit->buf[xmit->tail]);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		up->port.icount.tx++;
		if (FUNC6(xmit))
			break;
	} while (--count > 0);

	if (FUNC5(xmit) < WAKEUP_CHARS)
		FUNC8(&up->port);

	FUNC0("THRE...");

	if (FUNC6(xmit))
		FUNC1(up);
}