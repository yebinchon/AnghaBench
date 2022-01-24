#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct circ_buf {int head; scalar_t__ buf; int /*<<< orphan*/  tail; } ;
struct uart_state {struct circ_buf xmit; struct uart_port* uart_port; } ;
struct uart_port {int /*<<< orphan*/  lock; } ;
struct tty_struct {struct uart_state* driver_data; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int EL3HLT ; 
 int UART_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 

__attribute__((used)) static int
FUNC6(struct tty_struct *tty, const unsigned char *buf, int count)
{
	struct uart_state *state = tty->driver_data;
	struct uart_port *port;
	struct circ_buf *circ;
	unsigned long flags;
	int c, ret = 0;

	/*
	 * This means you called this function _after_ the port was
	 * closed.  No cookie for you.
	 */
	if (!state) {
		FUNC1(1);
		return -EL3HLT;
	}

	port = state->uart_port;
	circ = &state->xmit;

	if (!circ->buf)
		return 0;

	FUNC3(&port->lock, flags);
	while (1) {
		c = FUNC0(circ->head, circ->tail, UART_XMIT_SIZE);
		if (count < c)
			c = count;
		if (c <= 0)
			break;
		FUNC2(circ->buf + circ->head, buf, c);
		circ->head = (circ->head + c) & (UART_XMIT_SIZE - 1);
		buf += c;
		count -= c;
		ret += c;
	}
	FUNC4(&port->lock, flags);

	FUNC5(tty);
	return ret;
}