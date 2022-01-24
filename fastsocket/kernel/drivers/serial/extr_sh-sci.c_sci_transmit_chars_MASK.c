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
struct uart_port {scalar_t__ type; char x_char; TYPE_2__ icount; TYPE_1__* state; } ;
struct circ_buf {unsigned char* buf; size_t tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 scalar_t__ PORT_SCI ; 
 unsigned short SCI_CTRL_FLAGS_TIE ; 
 int /*<<< orphan*/  SCSCR ; 
 int /*<<< orphan*/  SCxSR ; 
 unsigned short FUNC0 (struct uart_port*) ; 
 unsigned short FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  SCxTDR ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 unsigned short FUNC2 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 
 int FUNC5 (struct uart_port*) ; 
 int FUNC6 (struct uart_port*) ; 
 scalar_t__ FUNC7 (struct circ_buf*) ; 
 scalar_t__ FUNC8 (struct circ_buf*) ; 
 unsigned int FUNC9 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_port*) ; 

__attribute__((used)) static void FUNC11(struct uart_port *port)
{
	struct circ_buf *xmit = &port->state->xmit;
	unsigned int stopped = FUNC9(port);
	unsigned short status;
	unsigned short ctrl;
	int count;

	status = FUNC2(port, SCxSR);
	if (!(status & FUNC0(port))) {
		ctrl = FUNC2(port, SCSCR);
		if (FUNC8(xmit))
			ctrl &= ~SCI_CTRL_FLAGS_TIE;
		else
			ctrl |= SCI_CTRL_FLAGS_TIE;
		FUNC3(port, SCSCR, ctrl);
		return;
	}

	if (port->type == PORT_SCI)
		count = FUNC5(port);
	else
		count = FUNC6(port);

	do {
		unsigned char c;

		if (port->x_char) {
			c = port->x_char;
			port->x_char = 0;
		} else if (!FUNC8(xmit) && !stopped) {
			c = xmit->buf[xmit->tail];
			xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		} else {
			break;
		}

		FUNC3(port, SCxTDR, c);

		port->icount.tx++;
	} while (--count > 0);

	FUNC3(port, SCxSR, FUNC1(port));

	if (FUNC7(xmit) < WAKEUP_CHARS)
		FUNC10(port);
	if (FUNC8(xmit)) {
		FUNC4(port);
	} else {
		ctrl = FUNC2(port, SCSCR);

		if (port->type != PORT_SCI) {
			FUNC2(port, SCxSR); /* Dummy read */
			FUNC3(port, SCxSR, FUNC1(port));
		}

		ctrl |= SCI_CTRL_FLAGS_TIE;
		FUNC3(port, SCSCR, ctrl);
	}
}