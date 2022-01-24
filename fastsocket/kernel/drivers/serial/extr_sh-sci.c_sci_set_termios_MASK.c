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
struct uart_port {int uartclk; scalar_t__ type; } ;
struct ktermios {int c_cflag; } ;

/* Variables and functions */
 int CREAD ; 
 int CRTSCTS ; 
 int CS7 ; 
 int CSIZE ; 
 int CSTOPB ; 
 int PARENB ; 
 int PARODD ; 
 scalar_t__ PORT_SCI ; 
 int /*<<< orphan*/  SCBRR ; 
 int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  SCFCR ; 
 int SCFCR_MCE ; 
 int SCFCR_RFRST ; 
 int SCFCR_TFRST ; 
 int /*<<< orphan*/  SCSCR ; 
 int FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  SCSMR ; 
 int /*<<< orphan*/  SCxSR ; 
 unsigned int FUNC2 (struct uart_port*) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int FUNC4 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_port*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct uart_port *port, struct ktermios *termios,
			    struct ktermios *old)
{
	unsigned int status, baud, smr_val;
	int t = -1;

	baud = FUNC8(port, termios, old, 0, port->uartclk/16);
	if (FUNC3(baud))
		t = FUNC0(baud, port->uartclk);

	do {
		status = FUNC4(port, SCxSR);
	} while (!(status & FUNC2(port)));

	FUNC6(port, SCSCR, 0x00);	/* TE=0, RE=0, CKE1=0 */

	if (port->type != PORT_SCI)
		FUNC6(port, SCFCR, SCFCR_RFRST | SCFCR_TFRST);

	smr_val = FUNC4(port, SCSMR) & 3;
	if ((termios->c_cflag & CSIZE) == CS7)
		smr_val |= 0x40;
	if (termios->c_cflag & PARENB)
		smr_val |= 0x20;
	if (termios->c_cflag & PARODD)
		smr_val |= 0x30;
	if (termios->c_cflag & CSTOPB)
		smr_val |= 0x08;

	FUNC9(port, termios->c_cflag, baud);

	FUNC6(port, SCSMR, smr_val);

	if (t > 0) {
		if (t >= 256) {
			FUNC6(port, SCSMR, (FUNC4(port, SCSMR) & ~3) | 1);
			t >>= 2;
		} else
			FUNC6(port, SCSMR, FUNC4(port, SCSMR) & ~3);

		FUNC6(port, SCBRR, t);
		FUNC10((1000000+(baud-1)) / baud); /* Wait one bit interval */
	}

	FUNC5(port, termios->c_cflag);
	FUNC6(port, SCFCR, (termios->c_cflag & CRTSCTS) ? SCFCR_MCE : 0);

	FUNC6(port, SCSCR, FUNC1(port));

	if ((termios->c_cflag & CREAD) != 0)
		FUNC7(port, 0);
}