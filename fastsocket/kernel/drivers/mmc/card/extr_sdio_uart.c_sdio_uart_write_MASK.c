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
struct tty_struct {struct sdio_uart_port* driver_data; } ;
struct circ_buf {int head; scalar_t__ buf; int /*<<< orphan*/  tail; } ;
struct sdio_uart_port {int ier; int /*<<< orphan*/  func; int /*<<< orphan*/  write_lock; struct circ_buf xmit; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int ENODEV ; 
 int UART_IER_THRI ; 
 int UART_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned char const*,int) ; 
 int FUNC2 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct tty_struct * tty, const unsigned char *buf,
			   int count)
{
	struct sdio_uart_port *port = tty->driver_data;
	struct circ_buf *circ = &port->xmit;
	int c, ret = 0;

	if (!port->func)
		return -ENODEV;

	FUNC6(&port->write_lock);
	while (1) {
		c = FUNC0(circ->head, circ->tail, UART_XMIT_SIZE);
		if (count < c)
			c = count;
		if (c <= 0)
			break;
		FUNC1(circ->buf + circ->head, buf, c);
		circ->head = (circ->head + c) & (UART_XMIT_SIZE - 1);
		buf += c;
		count -= c;
		ret += c;
	}
	FUNC7(&port->write_lock);

	if ( !(port->ier & UART_IER_THRI)) {
		int err = FUNC2(port);
		if (!err) {
			FUNC5(port);
			FUNC3(port->func);
			FUNC4(port);
		} else
			ret = err;
	}

	return ret;
}