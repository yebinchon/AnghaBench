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
struct uart_port {scalar_t__ ignore_status_mask; } ;
struct ktermios {int c_cflag; int c_iflag; } ;
struct TYPE_2__ {unsigned int line; int read_status_mask; int ignore_status_mask; int /*<<< orphan*/  lock; } ;
struct dz_port {unsigned int cflag; TYPE_1__ port; } ;

/* Variables and functions */
 int BRKINT ; 
 int CREAD ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 int DZ_B9600 ; 
 int DZ_BREAK ; 
 unsigned int DZ_CS5 ; 
 unsigned int DZ_CS6 ; 
 unsigned int DZ_CS7 ; 
 unsigned int DZ_CS8 ; 
 unsigned int DZ_CSTOPB ; 
 int DZ_FERR ; 
 int /*<<< orphan*/  DZ_LPR ; 
 int DZ_OERR ; 
 unsigned int DZ_PARENB ; 
 unsigned int DZ_PARODD ; 
 int DZ_PERR ; 
 unsigned int DZ_RXENAB ; 
 int IGNBRK ; 
 int IGNPAR ; 
 int INPCK ; 
 int PARENB ; 
 int PARMRK ; 
 int PARODD ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct dz_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dz_port* FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct ktermios*,unsigned int,unsigned int) ; 
 unsigned int FUNC6 (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,int,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct uart_port *uport, struct ktermios *termios,
			   struct ktermios *old_termios)
{
	struct dz_port *dport = FUNC4(uport);
	unsigned long flags;
	unsigned int cflag, baud;
	int bflag;

	cflag = dport->port.line;

	switch (termios->c_cflag & CSIZE) {
	case CS5:
		cflag |= DZ_CS5;
		break;
	case CS6:
		cflag |= DZ_CS6;
		break;
	case CS7:
		cflag |= DZ_CS7;
		break;
	case CS8:
	default:
		cflag |= DZ_CS8;
	}

	if (termios->c_cflag & CSTOPB)
		cflag |= DZ_CSTOPB;
	if (termios->c_cflag & PARENB)
		cflag |= DZ_PARENB;
	if (termios->c_cflag & PARODD)
		cflag |= DZ_PARODD;

	baud = FUNC6(uport, termios, old_termios, 50, 9600);
	bflag = FUNC0(baud);
	if (bflag < 0)	{			/* Try to keep unchanged.  */
		baud = FUNC6(uport, old_termios, NULL, 50, 9600);
		bflag = FUNC0(baud);
		if (bflag < 0)	{		/* Resort to 9600.  */
			baud = 9600;
			bflag = DZ_B9600;
		}
		FUNC5(termios, baud, baud);
	}
	cflag |= bflag;

	if (termios->c_cflag & CREAD)
		cflag |= DZ_RXENAB;

	FUNC2(&dport->port.lock, flags);

	FUNC7(uport, termios->c_cflag, baud);

	FUNC1(dport, DZ_LPR, cflag);
	dport->cflag = cflag;

	/* setup accept flag */
	dport->port.read_status_mask = DZ_OERR;
	if (termios->c_iflag & INPCK)
		dport->port.read_status_mask |= DZ_FERR | DZ_PERR;
	if (termios->c_iflag & (BRKINT | PARMRK))
		dport->port.read_status_mask |= DZ_BREAK;

	/* characters to ignore */
	uport->ignore_status_mask = 0;
	if ((termios->c_iflag & (IGNPAR | IGNBRK)) == (IGNPAR | IGNBRK))
		dport->port.ignore_status_mask |= DZ_OERR;
	if (termios->c_iflag & IGNPAR)
		dport->port.ignore_status_mask |= DZ_FERR | DZ_PERR;
	if (termios->c_iflag & IGNBRK)
		dport->port.ignore_status_mask |= DZ_BREAK;

	FUNC3(&dport->port.lock, flags);
}