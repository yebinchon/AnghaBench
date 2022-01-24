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
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  ignore_status_mask; int /*<<< orphan*/  read_status_mask; } ;
struct sa1100_port {TYPE_1__ port; int /*<<< orphan*/  timer; } ;
struct ktermios {unsigned int c_cflag; int c_iflag; } ;

/* Variables and functions */
 int BRKINT ; 
 unsigned int CS7 ; 
 unsigned int CS8 ; 
 unsigned int CSIZE ; 
 int CSTOPB ; 
 int IGNBRK ; 
 int IGNPAR ; 
 int INPCK ; 
 int PARENB ; 
 int PARMRK ; 
 int PARODD ; 
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 unsigned int FUNC1 (struct sa1100_port*) ; 
 int FUNC2 (struct sa1100_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct sa1100_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sa1100_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sa1100_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sa1100_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct sa1100_port*,int) ; 
 unsigned int UTCR0_DSS ; 
 unsigned int UTCR0_OES ; 
 unsigned int UTCR0_PE ; 
 unsigned int UTCR0_SBS ; 
 unsigned int UTCR3_RIE ; 
 unsigned int UTCR3_TIE ; 
 int UTSR0_RBB ; 
 int UTSR0_REB ; 
 int UTSR0_TFS ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int UTSR1_FRE ; 
 int UTSR1_PRE ; 
 int UTSR1_ROR ; 
 int UTSR1_TBY ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC15 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC16 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct uart_port*,int,unsigned int) ; 

__attribute__((used)) static void
FUNC18(struct uart_port *port, struct ktermios *termios,
		   struct ktermios *old)
{
	struct sa1100_port *sport = (struct sa1100_port *)port;
	unsigned long flags;
	unsigned int utcr0, old_utcr3, baud, quot;
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
		utcr0 = UTCR0_DSS;
	else
		utcr0 = 0;

	if (termios->c_cflag & CSTOPB)
		utcr0 |= UTCR0_SBS;
	if (termios->c_cflag & PARENB) {
		utcr0 |= UTCR0_PE;
		if (!(termios->c_cflag & PARODD))
			utcr0 |= UTCR0_OES;
	}

	/*
	 * Ask the core to calculate the divisor for us.
	 */
	baud = FUNC15(port, termios, old, 0, port->uartclk/16); 
	quot = FUNC16(port, baud);

	FUNC13(&sport->port.lock, flags);

	sport->port.read_status_mask &= FUNC8(UTSR0_TFS);
	sport->port.read_status_mask |= FUNC9(UTSR1_ROR);
	if (termios->c_iflag & INPCK)
		sport->port.read_status_mask |=
				FUNC9(UTSR1_FRE | UTSR1_PRE);
	if (termios->c_iflag & (BRKINT | PARMRK))
		sport->port.read_status_mask |=
				FUNC8(UTSR0_RBB | UTSR0_REB);

	/*
	 * Characters to ignore
	 */
	sport->port.ignore_status_mask = 0;
	if (termios->c_iflag & IGNPAR)
		sport->port.ignore_status_mask |=
				FUNC9(UTSR1_FRE | UTSR1_PRE);
	if (termios->c_iflag & IGNBRK) {
		sport->port.ignore_status_mask |=
				FUNC8(UTSR0_RBB | UTSR0_REB);
		/*
		 * If we're ignoring parity and break indicators,
		 * ignore overruns too (for real raw support).
		 */
		if (termios->c_iflag & IGNPAR)
			sport->port.ignore_status_mask |=
				FUNC9(UTSR1_ROR);
	}

	FUNC11(&sport->timer);

	/*
	 * Update the per-port timeout.
	 */
	FUNC17(port, termios->c_cflag, baud);

	/*
	 * disable interrupts and drain transmitter
	 */
	old_utcr3 = FUNC1(sport);
	FUNC6(sport, old_utcr3 & ~(UTCR3_RIE | UTCR3_TIE));

	while (FUNC2(sport) & UTSR1_TBY)
		FUNC10();

	/* then, disable everything */
	FUNC6(sport, 0);

	/* set the parity, stop bits and data size */
	FUNC3(sport, utcr0);

	/* set the baud rate */
	quot -= 1;
	FUNC4(sport, ((quot & 0xf00) >> 8));
	FUNC5(sport, (quot & 0xff));

	FUNC7(sport, -1);

	FUNC6(sport, old_utcr3);

	if (FUNC0(&sport->port, termios->c_cflag))
		FUNC12(&sport->port);

	FUNC14(&sport->port.lock, flags);
}