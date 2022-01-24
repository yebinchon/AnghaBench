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
struct zilog_channel {int /*<<< orphan*/  data; int /*<<< orphan*/  control; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx; } ;
struct uart_port {TYPE_2__ icount; TYPE_1__* state; scalar_t__ x_char; } ;
struct uart_ip22zilog_port {int /*<<< orphan*/  port; int /*<<< orphan*/  flags; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  IP22ZILOG_FLAG_TX_ACTIVE ; 
 int /*<<< orphan*/  IP22ZILOG_FLAG_TX_STOPPED ; 
 unsigned char Tx_BUF_EMP ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 struct zilog_channel* FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct zilog_channel*) ; 
 unsigned char FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port)
{
	struct uart_ip22zilog_port *up = (struct uart_ip22zilog_port *) port;
	struct zilog_channel *channel = FUNC0(port);
	unsigned char status;

	up->flags |= IP22ZILOG_FLAG_TX_ACTIVE;
	up->flags &= ~IP22ZILOG_FLAG_TX_STOPPED;

	status = FUNC3(&channel->control);
	FUNC1();

	/* TX busy?  Just wait for the TX done interrupt.  */
	if (!(status & Tx_BUF_EMP))
		return;

	/* Send the first character to jump-start the TX done
	 * IRQ sending engine.
	 */
	if (port->x_char) {
		FUNC6(port->x_char, &channel->data);
		FUNC1();
		FUNC2(channel);

		port->icount.tx++;
		port->x_char = 0;
	} else {
		struct circ_buf *xmit = &port->state->xmit;

		FUNC6(xmit->buf[xmit->tail], &channel->data);
		FUNC1();
		FUNC2(channel);

		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;

		if (FUNC4(xmit) < WAKEUP_CHARS)
			FUNC5(&up->port);
	}
}