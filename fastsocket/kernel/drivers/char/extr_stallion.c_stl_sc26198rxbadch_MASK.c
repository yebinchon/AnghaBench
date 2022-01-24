#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rxtotal; int /*<<< orphan*/  rxbreaks; int /*<<< orphan*/  rxoverrun; int /*<<< orphan*/  rxframing; int /*<<< orphan*/  rxparity; } ;
struct TYPE_4__ {int flags; } ;
struct stlport {unsigned int ioaddr; unsigned char rxignoremsk; unsigned char rxmarkmsk; TYPE_1__ stats; int /*<<< orphan*/  pagenr; int /*<<< orphan*/  brdnr; TYPE_2__ port; } ;

/* Variables and functions */
 int ASYNC_SAK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char SR_RXBREAK ; 
 unsigned char SR_RXFRAMING ; 
 unsigned char SR_RXOVERRUN ; 
 unsigned char SR_RXPARITY ; 
 unsigned char TTY_BREAK ; 
 unsigned char TTY_FRAME ; 
 unsigned char TTY_OVERRUN ; 
 unsigned char TTY_PARITY ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,char,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 struct tty_struct* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC6(struct stlport *portp, unsigned char status, char ch)
{
	struct tty_struct	*tty;
	unsigned int		ioaddr;

	tty = FUNC4(&portp->port);
	ioaddr = portp->ioaddr;

	if (status & SR_RXPARITY)
		portp->stats.rxparity++;
	if (status & SR_RXFRAMING)
		portp->stats.rxframing++;
	if (status & SR_RXOVERRUN)
		portp->stats.rxoverrun++;
	if (status & SR_RXBREAK)
		portp->stats.rxbreaks++;

	if ((tty != NULL) &&
	    ((portp->rxignoremsk & status) == 0)) {
		if (portp->rxmarkmsk & status) {
			if (status & SR_RXBREAK) {
				status = TTY_BREAK;
				if (portp->port.flags & ASYNC_SAK) {
					FUNC1(tty);
					FUNC0(portp->brdnr, portp->pagenr);
				}
			} else if (status & SR_RXPARITY)
				status = TTY_PARITY;
			else if (status & SR_RXFRAMING)
				status = TTY_FRAME;
			else if(status & SR_RXOVERRUN)
				status = TTY_OVERRUN;
			else
				status = 0;
		} else
			status = 0;

		FUNC2(tty, ch, status);
		FUNC5(tty);

		if (status == 0)
			portp->stats.rxtotal++;
	}
	FUNC3(tty);
}