#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int dummy; } ;
struct TYPE_2__ {int uartclk; int fifosize; int read_status_mask; int ignore_status_mask; int /*<<< orphan*/  lock; scalar_t__ membase; } ;
struct uart_amba_port {TYPE_1__ port; } ;
struct ktermios {int c_cflag; int c_iflag; } ;

/* Variables and functions */
 int BRKINT ; 
 int CREAD ; 
#define  CS5 130 
#define  CS6 129 
#define  CS7 128 
 int CSIZE ; 
 int CSTOPB ; 
 int IGNBRK ; 
 int IGNPAR ; 
 int INPCK ; 
 int PARENB ; 
 int PARMRK ; 
 int PARODD ; 
 scalar_t__ UART010_CR ; 
 unsigned int UART010_CR_MSIE ; 
 scalar_t__ UART010_LCRH ; 
 scalar_t__ UART010_LCRL ; 
 scalar_t__ UART010_LCRM ; 
 unsigned int UART01x_LCRH_EPS ; 
 unsigned int UART01x_LCRH_FEN ; 
 unsigned int UART01x_LCRH_PEN ; 
 unsigned int UART01x_LCRH_STP2 ; 
 unsigned int UART01x_LCRH_WLEN_5 ; 
 unsigned int UART01x_LCRH_WLEN_6 ; 
 unsigned int UART01x_LCRH_WLEN_7 ; 
 unsigned int UART01x_LCRH_WLEN_8 ; 
 int UART01x_RSR_BE ; 
 int UART01x_RSR_FE ; 
 int UART01x_RSR_OE ; 
 int UART01x_RSR_PE ; 
 int UART_DUMMY_RSR_RX ; 
 scalar_t__ FUNC0 (struct uart_port*,int) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC4 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC5 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void
FUNC8(struct uart_port *port, struct ktermios *termios,
		     struct ktermios *old)
{
	struct uart_amba_port *uap = (struct uart_amba_port *)port;
	unsigned int lcr_h, old_cr;
	unsigned long flags;
	unsigned int baud, quot;

	/*
	 * Ask the core to calculate the divisor for us.
	 */
	baud = FUNC4(port, termios, old, 0, uap->port.uartclk/16); 
	quot = FUNC5(port, baud);

	switch (termios->c_cflag & CSIZE) {
	case CS5:
		lcr_h = UART01x_LCRH_WLEN_5;
		break;
	case CS6:
		lcr_h = UART01x_LCRH_WLEN_6;
		break;
	case CS7:
		lcr_h = UART01x_LCRH_WLEN_7;
		break;
	default: // CS8
		lcr_h = UART01x_LCRH_WLEN_8;
		break;
	}
	if (termios->c_cflag & CSTOPB)
		lcr_h |= UART01x_LCRH_STP2;
	if (termios->c_cflag & PARENB) {
		lcr_h |= UART01x_LCRH_PEN;
		if (!(termios->c_cflag & PARODD))
			lcr_h |= UART01x_LCRH_EPS;
	}
	if (uap->port.fifosize > 1)
		lcr_h |= UART01x_LCRH_FEN;

	FUNC2(&uap->port.lock, flags);

	/*
	 * Update the per-port timeout.
	 */
	FUNC6(port, termios->c_cflag, baud);

	uap->port.read_status_mask = UART01x_RSR_OE;
	if (termios->c_iflag & INPCK)
		uap->port.read_status_mask |= UART01x_RSR_FE | UART01x_RSR_PE;
	if (termios->c_iflag & (BRKINT | PARMRK))
		uap->port.read_status_mask |= UART01x_RSR_BE;

	/*
	 * Characters to ignore
	 */
	uap->port.ignore_status_mask = 0;
	if (termios->c_iflag & IGNPAR)
		uap->port.ignore_status_mask |= UART01x_RSR_FE | UART01x_RSR_PE;
	if (termios->c_iflag & IGNBRK) {
		uap->port.ignore_status_mask |= UART01x_RSR_BE;
		/*
		 * If we're ignoring parity and break indicators,
		 * ignore overruns too (for real raw support).
		 */
		if (termios->c_iflag & IGNPAR)
			uap->port.ignore_status_mask |= UART01x_RSR_OE;
	}

	/*
	 * Ignore all characters if CREAD is not set.
	 */
	if ((termios->c_cflag & CREAD) == 0)
		uap->port.ignore_status_mask |= UART_DUMMY_RSR_RX;

	/* first, disable everything */
	old_cr = FUNC1(uap->port.membase + UART010_CR) & ~UART010_CR_MSIE;

	if (FUNC0(port, termios->c_cflag))
		old_cr |= UART010_CR_MSIE;

	FUNC7(0, uap->port.membase + UART010_CR);

	/* Set baud rate */
	quot -= 1;
	FUNC7((quot & 0xf00) >> 8, uap->port.membase + UART010_LCRM);
	FUNC7(quot & 0xff, uap->port.membase + UART010_LCRL);

	/*
	 * ----------v----------v----------v----------v-----
	 * NOTE: MUST BE WRITTEN AFTER UARTLCR_M & UARTLCR_L
	 * ----------^----------^----------^----------^-----
	 */
	FUNC7(lcr_h, uap->port.membase + UART010_LCRH);
	FUNC7(old_cr, uap->port.membase + UART010_CR);

	FUNC3(&uap->port.lock, flags);
}