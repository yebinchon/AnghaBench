#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  tx; } ;
struct uart_port {TYPE_3__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct s3c24xx_uart_port {TYPE_2__* info; struct uart_port port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_5__ {int tx_fifofull; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  S3C2410_UFSTAT ; 
 int /*<<< orphan*/  S3C2410_UTXH ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 scalar_t__ FUNC2 (struct circ_buf*) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 scalar_t__ FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *id)
{
	struct s3c24xx_uart_port *ourport = id;
	struct uart_port *port = &ourport->port;
	struct circ_buf *xmit = &port->state->xmit;
	int count = 256;

	if (port->x_char) {
		FUNC6(port, S3C2410_UTXH, port->x_char);
		port->icount.tx++;
		port->x_char = 0;
		goto out;
	}

	/* if there isnt anything more to transmit, or the uart is now
	 * stopped, disable the uart and exit
	*/

	if (FUNC3(xmit) || FUNC4(port)) {
		FUNC1(port);
		goto out;
	}

	/* try and drain the buffer... */

	while (!FUNC3(xmit) && count-- > 0) {
		if (FUNC0(port, S3C2410_UFSTAT) & ourport->info->tx_fifofull)
			break;

		FUNC6(port, S3C2410_UTXH, xmit->buf[xmit->tail]);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;
	}

	if (FUNC2(xmit) < WAKEUP_CHARS)
		FUNC5(port);

	if (FUNC3(xmit))
		FUNC1(port);

 out:
	return IRQ_HANDLED;
}