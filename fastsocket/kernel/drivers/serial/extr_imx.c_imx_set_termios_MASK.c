#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long uint64_t ;
struct uart_port {int uartclk; TYPE_2__* state; } ;
struct ktermios {unsigned int c_cflag; int c_iflag; } ;
struct TYPE_11__ {int read_status_mask; int ignore_status_mask; unsigned int uartclk; int /*<<< orphan*/  lock; scalar_t__ membase; TYPE_4__* state; } ;
struct imx_port {TYPE_5__ port; int /*<<< orphan*/  timer; scalar_t__ have_rtscts; } ;
typedef  int /*<<< orphan*/  speed_t ;
struct TYPE_9__ {int /*<<< orphan*/  tty; } ;
struct TYPE_10__ {TYPE_3__ port; } ;
struct TYPE_7__ {scalar_t__ tty; } ;
struct TYPE_8__ {TYPE_1__ port; } ;

/* Variables and functions */
 int BRKINT ; 
 int CLOCAL ; 
 int CMSPAR ; 
 int CRTSCTS ; 
 unsigned int CS7 ; 
 unsigned int CS8 ; 
 unsigned int CSIZE ; 
 int CSTOPB ; 
 int HUPCL ; 
 int IGNBRK ; 
 int IGNPAR ; 
 int INPCK ; 
 scalar_t__ MX2_ONEMS ; 
 int PARENB ; 
 int PARMRK ; 
 int PARODD ; 
 scalar_t__ FUNC0 (TYPE_5__*,int) ; 
 scalar_t__ UBIR ; 
 scalar_t__ UBMR ; 
 scalar_t__ UCR1 ; 
 unsigned int UCR1_RRDYEN ; 
 unsigned int UCR1_RTSDEN ; 
 unsigned int UCR1_TXMPTYEN ; 
 scalar_t__ UCR2 ; 
 unsigned int UCR2_CTSC ; 
 unsigned int UCR2_IRTS ; 
 unsigned int UCR2_PREN ; 
 unsigned int UCR2_PROE ; 
 unsigned int UCR2_RXEN ; 
 unsigned int UCR2_SRST ; 
 unsigned int UCR2_STPB ; 
 unsigned int UCR2_TXEN ; 
 unsigned int UCR2_WS ; 
 scalar_t__ UFCR ; 
 unsigned int UFCR_RFDIV ; 
 unsigned int FUNC1 (unsigned int) ; 
 int URXD_BRK ; 
 int URXD_FRMERR ; 
 int URXD_OVRRUN ; 
 int URXD_PRERR ; 
 scalar_t__ FUNC2 (struct imx_port*) ; 
 scalar_t__ USR2 ; 
 unsigned int USR2_TXDC ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned int,int,int,unsigned long*,unsigned long*) ; 
 unsigned int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC13 (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ; 
 unsigned int FUNC14 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct uart_port*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void
FUNC17(struct uart_port *port, struct ktermios *termios,
		   struct ktermios *old)
{
	struct imx_port *sport = (struct imx_port *)port;
	unsigned long flags;
	unsigned int ucr2, old_ucr1, old_txrxen, baud, quot;
	unsigned int old_csize = old ? old->c_cflag & CSIZE : CS8;
	unsigned int div, ufcr;
	unsigned long num, denom;
	uint64_t tdiv64;

	/*
	 * If we don't support modem control lines, don't allow
	 * these to be set.
	 */
	if (0) {
		termios->c_cflag &= ~(HUPCL | CRTSCTS | CMSPAR);
		termios->c_cflag |= CLOCAL;
	}

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
		ucr2 = UCR2_WS | UCR2_SRST | UCR2_IRTS;
	else
		ucr2 = UCR2_SRST | UCR2_IRTS;

	if (termios->c_cflag & CRTSCTS) {
		if( sport->have_rtscts ) {
			ucr2 &= ~UCR2_IRTS;
			ucr2 |= UCR2_CTSC;
		} else {
			termios->c_cflag &= ~CRTSCTS;
		}
	}

	if (termios->c_cflag & CSTOPB)
		ucr2 |= UCR2_STPB;
	if (termios->c_cflag & PARENB) {
		ucr2 |= UCR2_PREN;
		if (termios->c_cflag & PARODD)
			ucr2 |= UCR2_PROE;
	}

	/*
	 * Ask the core to calculate the divisor for us.
	 */
	baud = FUNC13(port, termios, old, 50, port->uartclk / 16);
	quot = FUNC14(port, baud);

	FUNC10(&sport->port.lock, flags);

	sport->port.read_status_mask = 0;
	if (termios->c_iflag & INPCK)
		sport->port.read_status_mask |= (URXD_FRMERR | URXD_PRERR);
	if (termios->c_iflag & (BRKINT | PARMRK))
		sport->port.read_status_mask |= URXD_BRK;

	/*
	 * Characters to ignore
	 */
	sport->port.ignore_status_mask = 0;
	if (termios->c_iflag & IGNPAR)
		sport->port.ignore_status_mask |= URXD_PRERR;
	if (termios->c_iflag & IGNBRK) {
		sport->port.ignore_status_mask |= URXD_BRK;
		/*
		 * If we're ignoring parity and break indicators,
		 * ignore overruns too (for real raw support).
		 */
		if (termios->c_iflag & IGNPAR)
			sport->port.ignore_status_mask |= URXD_OVRRUN;
	}

	FUNC5(&sport->timer);

	/*
	 * Update the per-port timeout.
	 */
	FUNC15(port, termios->c_cflag, baud);

	/*
	 * disable interrupts and drain transmitter
	 */
	old_ucr1 = FUNC9(sport->port.membase + UCR1);
	FUNC16(old_ucr1 & ~(UCR1_TXMPTYEN | UCR1_RRDYEN | UCR1_RTSDEN),
			sport->port.membase + UCR1);

	while ( !(FUNC9(sport->port.membase + USR2) & USR2_TXDC))
		FUNC3();

	/* then, disable everything */
	old_txrxen = FUNC9(sport->port.membase + UCR2);
	FUNC16(old_txrxen & ~( UCR2_TXEN | UCR2_RXEN),
			sport->port.membase + UCR2);
	old_txrxen &= (UCR2_TXEN | UCR2_RXEN);

	if (FUNC2(sport)) {
		/*
		 * use maximum available submodule frequency to
		 * avoid missing short pulses due to low sampling rate
		 */
		div = 1;
	} else {
		div = sport->port.uartclk / (baud * 16);
		if (div > 7)
			div = 7;
		if (!div)
			div = 1;
	}

	FUNC8(16 * div * baud, sport->port.uartclk,
		1 << 16, 1 << 16, &num, &denom);

	if (port->state && port->state->port.tty) {
		tdiv64 = sport->port.uartclk;
		tdiv64 *= num;
		FUNC6(tdiv64, denom * 16 * div);
		FUNC12(sport->port.state->port.tty,
				(speed_t)tdiv64, (speed_t)tdiv64);
	}

	num -= 1;
	denom -= 1;

	ufcr = FUNC9(sport->port.membase + UFCR);
	ufcr = (ufcr & (~UFCR_RFDIV)) | FUNC1(div);
	FUNC16(ufcr, sport->port.membase + UFCR);

	FUNC16(num, sport->port.membase + UBIR);
	FUNC16(denom, sport->port.membase + UBMR);

	if (!FUNC4())
		FUNC16(sport->port.uartclk / div / 1000,
				sport->port.membase + MX2_ONEMS);

	FUNC16(old_ucr1, sport->port.membase + UCR1);

	/* set the parity, stop bits and data size */
	FUNC16(ucr2 | old_txrxen, sport->port.membase + UCR2);

	if (FUNC0(&sport->port, termios->c_cflag))
		FUNC7(&sport->port);

	FUNC11(&sport->port.lock, flags);
}