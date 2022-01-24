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
struct uart_port {int uartclk; int read_status_mask; int ignore_status_mask; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct ktermios {int c_cflag; int c_iflag; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_ms ) (struct uart_port*) ;} ;

/* Variables and functions */
 unsigned int ATMEL_US_CHRL ; 
 unsigned int ATMEL_US_CHRL_5 ; 
 unsigned int ATMEL_US_CHRL_6 ; 
 unsigned int ATMEL_US_CHRL_7 ; 
 unsigned int ATMEL_US_CHRL_8 ; 
 int ATMEL_US_FRAME ; 
 unsigned int ATMEL_US_NBSTOP ; 
 unsigned int ATMEL_US_NBSTOP_2 ; 
 int ATMEL_US_OVRE ; 
 unsigned int ATMEL_US_PAR ; 
 int ATMEL_US_PARE ; 
 unsigned int ATMEL_US_PAR_EVEN ; 
 unsigned int ATMEL_US_PAR_MARK ; 
 unsigned int ATMEL_US_PAR_NONE ; 
 unsigned int ATMEL_US_PAR_ODD ; 
 unsigned int ATMEL_US_PAR_SPACE ; 
 int ATMEL_US_RSTRX ; 
 int ATMEL_US_RSTSTA ; 
 int ATMEL_US_RXBRK ; 
 int ATMEL_US_RXDIS ; 
 int ATMEL_US_RXEN ; 
 int ATMEL_US_TXDIS ; 
 int ATMEL_US_TXEN ; 
 unsigned int ATMEL_US_USCLKS ; 
 unsigned int ATMEL_US_USCLKS_MCK_DIV8 ; 
 unsigned int ATMEL_US_USMODE ; 
 unsigned int ATMEL_US_USMODE_HWHS ; 
 unsigned int ATMEL_US_USMODE_NORMAL ; 
 int BRKINT ; 
 int CMSPAR ; 
 int CRTSCTS ; 
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
 scalar_t__ FUNC0 (struct uart_port*,int) ; 
 unsigned int FUNC1 (struct uart_port*) ; 
 unsigned int FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,unsigned int) ; 
 scalar_t__ FUNC8 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_port*) ; 
 unsigned int FUNC12 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC13 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct uart_port*,int,unsigned int) ; 

__attribute__((used)) static void FUNC15(struct uart_port *port, struct ktermios *termios,
			      struct ktermios *old)
{
	unsigned long flags;
	unsigned int mode, imr, quot, baud;

	/* Get current mode register */
	mode = FUNC2(port) & ~(ATMEL_US_USCLKS | ATMEL_US_CHRL
					| ATMEL_US_NBSTOP | ATMEL_US_PAR
					| ATMEL_US_USMODE);

	baud = FUNC12(port, termios, old, 0, port->uartclk / 16);
	quot = FUNC13(port, baud);

	if (quot > 65535) {	/* BRGR is 16-bit, so switch to slower clock */
		quot /= 8;
		mode |= ATMEL_US_USCLKS_MCK_DIV8;
	}

	/* byte size */
	switch (termios->c_cflag & CSIZE) {
	case CS5:
		mode |= ATMEL_US_CHRL_5;
		break;
	case CS6:
		mode |= ATMEL_US_CHRL_6;
		break;
	case CS7:
		mode |= ATMEL_US_CHRL_7;
		break;
	default:
		mode |= ATMEL_US_CHRL_8;
		break;
	}

	/* stop bits */
	if (termios->c_cflag & CSTOPB)
		mode |= ATMEL_US_NBSTOP_2;

	/* parity */
	if (termios->c_cflag & PARENB) {
		/* Mark or Space parity */
		if (termios->c_cflag & CMSPAR) {
			if (termios->c_cflag & PARODD)
				mode |= ATMEL_US_PAR_MARK;
			else
				mode |= ATMEL_US_PAR_SPACE;
		} else if (termios->c_cflag & PARODD)
			mode |= ATMEL_US_PAR_ODD;
		else
			mode |= ATMEL_US_PAR_EVEN;
	} else
		mode |= ATMEL_US_PAR_NONE;

	/* hardware handshake (RTS/CTS) */
	if (termios->c_cflag & CRTSCTS)
		mode |= ATMEL_US_USMODE_HWHS;
	else
		mode |= ATMEL_US_USMODE_NORMAL;

	FUNC9(&port->lock, flags);

	port->read_status_mask = ATMEL_US_OVRE;
	if (termios->c_iflag & INPCK)
		port->read_status_mask |= (ATMEL_US_FRAME | ATMEL_US_PARE);
	if (termios->c_iflag & (BRKINT | PARMRK))
		port->read_status_mask |= ATMEL_US_RXBRK;

	if (FUNC8(port))
		/* need to enable error interrupts */
		FUNC6(port, port->read_status_mask);

	/*
	 * Characters to ignore
	 */
	port->ignore_status_mask = 0;
	if (termios->c_iflag & IGNPAR)
		port->ignore_status_mask |= (ATMEL_US_FRAME | ATMEL_US_PARE);
	if (termios->c_iflag & IGNBRK) {
		port->ignore_status_mask |= ATMEL_US_RXBRK;
		/*
		 * If we're ignoring parity and break indicators,
		 * ignore overruns too (for real raw support).
		 */
		if (termios->c_iflag & IGNPAR)
			port->ignore_status_mask |= ATMEL_US_OVRE;
	}
	/* TODO: Ignore all characters if CREAD is set.*/

	/* update the per-port timeout */
	FUNC14(port, termios->c_cflag, baud);

	/*
	 * save/disable interrupts. The tty layer will ensure that the
	 * transmitter is empty if requested by the caller, so there's
	 * no need to wait for it here.
	 */
	imr = FUNC1(port);
	FUNC5(port, -1);

	/* disable receiver and transmitter */
	FUNC4(port, ATMEL_US_TXDIS | ATMEL_US_RXDIS);

	/* set the parity, stop bits and data size */
	FUNC7(port, mode);

	/* set the baud rate */
	FUNC3(port, quot);
	FUNC4(port, ATMEL_US_RSTSTA | ATMEL_US_RSTRX);
	FUNC4(port, ATMEL_US_TXEN | ATMEL_US_RXEN);

	/* restore interrupts */
	FUNC6(port, imr);

	/* CTS flow-control and modem-status interrupts */
	if (FUNC0(port, termios->c_cflag))
		port->ops->enable_ms(port);

	FUNC10(&port->lock, flags);
}