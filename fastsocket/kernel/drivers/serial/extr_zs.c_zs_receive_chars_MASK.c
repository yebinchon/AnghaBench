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
struct zs_scc {int /*<<< orphan*/  zlock; } ;
struct uart_icount {int /*<<< orphan*/  overrun; int /*<<< orphan*/  parity; int /*<<< orphan*/  frame; int /*<<< orphan*/  brk; int /*<<< orphan*/  rx; } ;
struct uart_port {unsigned int read_status_mask; TYPE_2__* state; struct uart_icount icount; } ;
struct zs_port {unsigned int tty_break; struct zs_scc* scc; struct uart_port port; } ;
struct TYPE_3__ {int /*<<< orphan*/  tty; } ;
struct TYPE_4__ {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_RES ; 
 unsigned int FRM_ERR ; 
 unsigned int PAR_ERR ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R1 ; 
 unsigned int Rx_BRK ; 
 unsigned int Rx_CH_AV ; 
 unsigned int Rx_OVR ; 
 unsigned int Rx_SYS ; 
 unsigned int TTY_BREAK ; 
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_PARITY ; 
 unsigned int FUNC0 (struct zs_port*) ; 
 unsigned int FUNC1 (struct zs_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct zs_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct zs_port *zport)
{
	struct uart_port *uport = &zport->port;
	struct zs_scc *scc = zport->scc;
	struct uart_icount *icount;
	unsigned int avail, status, ch, flag;
	int count;

	for (count = 16; count; count--) {
		FUNC2(&scc->zlock);
		avail = FUNC1(zport, R0) & Rx_CH_AV;
		FUNC3(&scc->zlock);
		if (!avail)
			break;

		FUNC2(&scc->zlock);
		status = FUNC1(zport, R1) & (Rx_OVR | FRM_ERR | PAR_ERR);
		ch = FUNC0(zport);
		FUNC3(&scc->zlock);

		flag = TTY_NORMAL;

		icount = &uport->icount;
		icount->rx++;

		/* Handle the null char got when BREAK is removed.  */
		if (!ch)
			status |= zport->tty_break;
		if (FUNC7(status &
			     (Rx_OVR | FRM_ERR | PAR_ERR | Rx_SYS | Rx_BRK))) {
			zport->tty_break = 0;

			/* Reset the error indication.  */
			if (status & (Rx_OVR | FRM_ERR | PAR_ERR)) {
				FUNC2(&scc->zlock);
				FUNC8(zport, R0, ERR_RES);
				FUNC3(&scc->zlock);
			}

			if (status & (Rx_SYS | Rx_BRK)) {
				icount->brk++;
				/* SysRq discards the null char.  */
				if (status & Rx_SYS)
					continue;
			} else if (status & FRM_ERR)
				icount->frame++;
			else if (status & PAR_ERR)
				icount->parity++;
			if (status & Rx_OVR)
				icount->overrun++;

			status &= uport->read_status_mask;
			if (status & Rx_BRK)
				flag = TTY_BREAK;
			else if (status & FRM_ERR)
				flag = TTY_FRAME;
			else if (status & PAR_ERR)
				flag = TTY_PARITY;
		}

		if (FUNC5(uport, ch))
			continue;

		FUNC6(uport, status, Rx_OVR, ch, flag);
	}

	FUNC4(uport->state->port.tty);
}