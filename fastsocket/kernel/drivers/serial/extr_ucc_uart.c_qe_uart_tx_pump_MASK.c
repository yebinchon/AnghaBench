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
struct uart_port {char x_char; TYPE_2__ icount; TYPE_1__* state; } ;
struct uart_qe_port {unsigned int tx_fifosize; struct qe_bd* tx_cur; struct qe_bd* tx_bd_base; struct qe_bd* rx_cur; struct uart_port port; } ;
struct qe_bd {int /*<<< orphan*/  status; int /*<<< orphan*/  length; int /*<<< orphan*/  buf; } ;
struct circ_buf {size_t tail; size_t head; int /*<<< orphan*/ * buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int BD_SC_READY ; 
 int BD_SC_WRAP ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ ,struct uart_qe_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (struct circ_buf*) ; 
 scalar_t__ FUNC6 (struct circ_buf*) ; 
 scalar_t__ FUNC7 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*) ; 

__attribute__((used)) static int FUNC9(struct uart_qe_port *qe_port)
{
	struct qe_bd *bdp;
	unsigned char *p;
	unsigned int count;
	struct uart_port *port = &qe_port->port;
	struct circ_buf *xmit = &port->state->xmit;

	bdp = qe_port->rx_cur;

	/* Handle xon/xoff */
	if (port->x_char) {
		/* Pick next descriptor and fill from buffer */
		bdp = qe_port->tx_cur;

		p = FUNC2(bdp->buf, qe_port);

		*p++ = port->x_char;
		FUNC1(&bdp->length, 1);
		FUNC4(&bdp->status, BD_SC_READY);
		/* Get next BD. */
		if (FUNC0(&bdp->status) & BD_SC_WRAP)
			bdp = qe_port->tx_bd_base;
		else
			bdp++;
		qe_port->tx_cur = bdp;

		port->icount.tx++;
		port->x_char = 0;
		return 1;
	}

	if (FUNC6(xmit) || FUNC7(port)) {
		FUNC3(port);
		return 0;
	}

	/* Pick next descriptor and fill from buffer */
	bdp = qe_port->tx_cur;

	while (!(FUNC0(&bdp->status) & BD_SC_READY) &&
	       (xmit->tail != xmit->head)) {
		count = 0;
		p = FUNC2(bdp->buf, qe_port);
		while (count < qe_port->tx_fifosize) {
			*p++ = xmit->buf[xmit->tail];
			xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
			port->icount.tx++;
			count++;
			if (xmit->head == xmit->tail)
				break;
		}

		FUNC1(&bdp->length, count);
		FUNC4(&bdp->status, BD_SC_READY);

		/* Get next BD. */
		if (FUNC0(&bdp->status) & BD_SC_WRAP)
			bdp = qe_port->tx_bd_base;
		else
			bdp++;
	}
	qe_port->tx_cur = bdp;

	if (FUNC5(xmit) < WAKEUP_CHARS)
		FUNC8(port);

	if (FUNC6(xmit)) {
		/* The kernel buffer is empty, so turn off TX interrupts.  We
		   don't need to be told when the QE is finished transmitting
		   the data. */
		FUNC3(port);
		return 0;
	}

	return 1;
}