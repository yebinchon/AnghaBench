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
typedef  int u8 ;
struct TYPE_6__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  brk; int /*<<< orphan*/  rx; } ;
struct uart_port {int read_status_mask; int ignore_status_mask; TYPE_3__ icount; TYPE_2__* state; } ;
struct tty_struct {int dummy; } ;
struct TYPE_4__ {struct tty_struct* tty; } ;
struct TYPE_5__ {TYPE_1__ port; } ;

/* Variables and functions */
 void* FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RHR ; 
 int /*<<< orphan*/  SR ; 
 int SR_BREAK ; 
 int SR_FRAME ; 
 int SR_OVERRUN ; 
 int SR_PARITY ; 
 int SR_RXRDY ; 
 char TTY_BREAK ; 
 char TTY_FRAME ; 
 char TTY_NORMAL ; 
 char TTY_PARITY ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,unsigned char,char) ; 
 scalar_t__ FUNC2 (struct uart_port*) ; 
 scalar_t__ FUNC3 (struct uart_port*,unsigned char) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static struct tty_struct *FUNC5(struct uart_port *port)
{
	struct tty_struct *tty = NULL;
	int limit = 10000;
	unsigned char ch;
	char flag;
	u8 status;

	if (port->state != NULL)		/* Unopened serial console */
		tty = port->state->port.tty;

	while (limit-- > 0) {
		status = FUNC0(port, SR);
		if (!(status & SR_RXRDY))
			break;
		ch = FUNC0(port, RHR);

		flag = TTY_NORMAL;
		port->icount.rx++;

		if (FUNC4(status & (SR_BREAK | SR_FRAME |
				       SR_PARITY | SR_OVERRUN))) {
			if (status & SR_BREAK) {
				status &= ~(SR_PARITY | SR_FRAME);
				port->icount.brk++;
				if (FUNC2(port))
					continue;
			} else if (status & SR_PARITY)
				port->icount.parity++;
			else if (status & SR_FRAME)
				port->icount.frame++;
			if (status & SR_OVERRUN)
				port->icount.overrun++;

			status &= port->read_status_mask;
			if (status & SR_BREAK)
				flag = TTY_BREAK;
			else if (status & SR_PARITY)
				flag = TTY_PARITY;
			else if (status & SR_FRAME)
				flag = TTY_FRAME;
		}

		if (FUNC3(port, ch))
			continue;

		if (status & port->ignore_status_mask)
			continue;

		FUNC1(tty, ch, flag);
	}
	return tty;
}