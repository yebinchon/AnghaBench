#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  rx; } ;
struct TYPE_9__ {unsigned int ignore_status_mask; unsigned int read_status_mask; int /*<<< orphan*/  lock; scalar_t__ sysrq; TYPE_3__ icount; scalar_t__ membase; TYPE_2__* state; } ;
struct imx_port {TYPE_4__ port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {struct tty_struct* tty; } ;
struct TYPE_7__ {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_OVERRUN ; 
 unsigned int TTY_PARITY ; 
 scalar_t__ URXD0 ; 
 unsigned int URXD_FRMERR ; 
 unsigned int URXD_OVRRUN ; 
 unsigned int URXD_PRERR ; 
 scalar_t__ USR2 ; 
 unsigned long USR2_BRCD ; 
 int USR2_RDR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*,unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct imx_port *sport = dev_id;
	unsigned int rx,flg,ignored = 0;
	struct tty_struct *tty = sport->port.state->port.tty;
	unsigned long flags, temp;

	FUNC1(&sport->port.lock,flags);

	while (FUNC0(sport->port.membase + USR2) & USR2_RDR) {
		flg = TTY_NORMAL;
		sport->port.icount.rx++;

		rx = FUNC0(sport->port.membase + URXD0);

		temp = FUNC0(sport->port.membase + USR2);
		if (temp & USR2_BRCD) {
			FUNC7(temp | USR2_BRCD, sport->port.membase + USR2);
			if (FUNC5(&sport->port))
				continue;
		}

		if (FUNC6(&sport->port, (unsigned char)rx))
			continue;

		if (rx & (URXD_PRERR | URXD_OVRRUN | URXD_FRMERR) ) {
			if (rx & URXD_PRERR)
				sport->port.icount.parity++;
			else if (rx & URXD_FRMERR)
				sport->port.icount.frame++;
			if (rx & URXD_OVRRUN)
				sport->port.icount.overrun++;

			if (rx & sport->port.ignore_status_mask) {
				if (++ignored > 100)
					goto out;
				continue;
			}

			rx &= sport->port.read_status_mask;

			if (rx & URXD_PRERR)
				flg = TTY_PARITY;
			else if (rx & URXD_FRMERR)
				flg = TTY_FRAME;
			if (rx & URXD_OVRRUN)
				flg = TTY_OVERRUN;

#ifdef SUPPORT_SYSRQ
			sport->port.sysrq = 0;
#endif
		}

		FUNC4(tty, rx, flg);
	}

out:
	FUNC2(&sport->port.lock,flags);
	FUNC3(tty);
	return IRQ_HANDLED;
}