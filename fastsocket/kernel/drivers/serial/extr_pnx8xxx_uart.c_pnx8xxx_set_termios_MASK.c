#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int uartclk; } ;
struct TYPE_3__ {int read_status_mask; int ignore_status_mask; int /*<<< orphan*/  lock; } ;
struct pnx8xxx_port {TYPE_1__ port; int /*<<< orphan*/  timer; } ;
struct ktermios {unsigned int c_cflag; int c_iflag; } ;

/* Variables and functions */
 int BRKINT ; 
 int CREAD ; 
 unsigned int CS7 ; 
 unsigned int CS8 ; 
 unsigned int CSIZE ; 
 int CSTOPB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int IGNBRK ; 
 int IGNPAR ; 
 int INPCK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int PARENB ; 
 int PARMRK ; 
 int PARODD ; 
 int /*<<< orphan*/  PNX8XXX_BAUD ; 
 int /*<<< orphan*/  PNX8XXX_FIFO ; 
 int /*<<< orphan*/  PNX8XXX_ICLR ; 
 int /*<<< orphan*/  PNX8XXX_IEN ; 
 int /*<<< orphan*/  PNX8XXX_LCR ; 
 int /*<<< orphan*/  PNX8XXX_UART_FIFO_RXFE ; 
 int /*<<< orphan*/  PNX8XXX_UART_FIFO_RXPAR ; 
 int PNX8XXX_UART_FIFO_TXFIFO_STA ; 
 unsigned int PNX8XXX_UART_INT_ALLRX ; 
 unsigned int PNX8XXX_UART_INT_ALLTX ; 
 int /*<<< orphan*/  PNX8XXX_UART_INT_BREAK ; 
 int /*<<< orphan*/  PNX8XXX_UART_INT_EMPTY ; 
 int /*<<< orphan*/  PNX8XXX_UART_INT_RX ; 
 int /*<<< orphan*/  PNX8XXX_UART_INT_RXOVRN ; 
 unsigned int PNX8XXX_UART_LCR_2STOPB ; 
 unsigned int PNX8XXX_UART_LCR_8BIT ; 
 unsigned int PNX8XXX_UART_LCR_PAREN ; 
 unsigned int PNX8XXX_UART_LCR_PAREVN ; 
 unsigned int PNX8XXX_UART_LCR_RX_RST ; 
 unsigned int PNX8XXX_UART_LCR_TX_RST ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (struct pnx8xxx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pnx8xxx_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC10 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC11 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct uart_port*,int,unsigned int) ; 

__attribute__((used)) static void
FUNC13(struct uart_port *port, struct ktermios *termios,
		   struct ktermios *old)
{
	struct pnx8xxx_port *sport = (struct pnx8xxx_port *)port;
	unsigned long flags;
	unsigned int lcr_fcr, old_ien, baud, quot;
	unsigned int old_csize = old ? old->c_cflag & CSIZE : CS8;

	/*
	 * We only support CS7 and CS8.
	 */
	while ((termios->c_cflag & CSIZE) != CS7 &&
	       (termios->c_cflag & CSIZE) != CS8) {
		termios->c_cflag &= ~CSIZE;
		termios->c_cflag |= old_csize;
		old_csize = CS8;
	}

	if ((termios->c_cflag & CSIZE) == CS8)
		lcr_fcr = PNX8XXX_UART_LCR_8BIT;
	else
		lcr_fcr = 0;

	if (termios->c_cflag & CSTOPB)
		lcr_fcr |= PNX8XXX_UART_LCR_2STOPB;
	if (termios->c_cflag & PARENB) {
		lcr_fcr |= PNX8XXX_UART_LCR_PAREN;
		if (!(termios->c_cflag & PARODD))
			lcr_fcr |= PNX8XXX_UART_LCR_PAREVN;
	}

	/*
	 * Ask the core to calculate the divisor for us.
	 */
	baud = FUNC10(port, termios, old, 0, port->uartclk/16);
	quot = FUNC11(port, baud);

	FUNC8(&sport->port.lock, flags);

	sport->port.read_status_mask = FUNC1(PNX8XXX_UART_INT_RXOVRN) |
				FUNC1(PNX8XXX_UART_INT_EMPTY) |
				FUNC1(PNX8XXX_UART_INT_RX);
	if (termios->c_iflag & INPCK)
		sport->port.read_status_mask |=
			FUNC0(PNX8XXX_UART_FIFO_RXFE) |
			FUNC0(PNX8XXX_UART_FIFO_RXPAR);
	if (termios->c_iflag & (BRKINT | PARMRK))
		sport->port.read_status_mask |=
			FUNC1(PNX8XXX_UART_INT_BREAK);

	/*
	 * Characters to ignore
	 */
	sport->port.ignore_status_mask = 0;
	if (termios->c_iflag & IGNPAR)
		sport->port.ignore_status_mask |=
			FUNC0(PNX8XXX_UART_FIFO_RXFE) |
			FUNC0(PNX8XXX_UART_FIFO_RXPAR);
	if (termios->c_iflag & IGNBRK) {
		sport->port.ignore_status_mask |=
			FUNC1(PNX8XXX_UART_INT_BREAK);
		/*
		 * If we're ignoring parity and break indicators,
		 * ignore overruns too (for real raw support).
		 */
		if (termios->c_iflag & IGNPAR)
			sport->port.ignore_status_mask |=
				FUNC1(PNX8XXX_UART_INT_RXOVRN);
	}

	/*
	 * ignore all characters if CREAD is not set
	 */
	if ((termios->c_cflag & CREAD) == 0)
		sport->port.ignore_status_mask |=
			FUNC1(PNX8XXX_UART_INT_RX);

	FUNC4(&sport->timer);

	/*
	 * Update the per-port timeout.
	 */
	FUNC12(port, termios->c_cflag, baud);

	/*
	 * disable interrupts and drain transmitter
	 */
	old_ien = FUNC6(sport, PNX8XXX_IEN);
	FUNC7(sport, PNX8XXX_IEN, old_ien & ~(PNX8XXX_UART_INT_ALLTX |
					PNX8XXX_UART_INT_ALLRX));

	while (FUNC6(sport, PNX8XXX_FIFO) & PNX8XXX_UART_FIFO_TXFIFO_STA)
		FUNC3();

	/* then, disable everything */
	FUNC7(sport, PNX8XXX_IEN, 0);

	/* Reset the Rx and Tx FIFOs too */
	lcr_fcr |= PNX8XXX_UART_LCR_TX_RST;
	lcr_fcr |= PNX8XXX_UART_LCR_RX_RST;

	/* set the parity, stop bits and data size */
	FUNC7(sport, PNX8XXX_LCR, lcr_fcr);

	/* set the baud rate */
	quot -= 1;
	FUNC7(sport, PNX8XXX_BAUD, quot);

	FUNC7(sport, PNX8XXX_ICLR, -1);

	FUNC7(sport, PNX8XXX_IEN, old_ien);

	if (FUNC2(&sport->port, termios->c_cflag))
		FUNC5(&sport->port);

	FUNC9(&sport->port.lock, flags);
}