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
typedef  int /*<<< orphan*/  u8 ;
struct zs_scc {int /*<<< orphan*/  zlock; struct zs_port* zport; } ;
struct zs_port {int /*<<< orphan*/ * regs; struct zs_scc* scc; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTR ; 
 int /*<<< orphan*/  LOOPBAK ; 
 int /*<<< orphan*/  R14 ; 
 int /*<<< orphan*/  R5 ; 
 int /*<<< orphan*/  RTS ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_LOOP ; 
 unsigned int TIOCM_RTS ; 
 size_t ZS_CHAN_A ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct zs_port* FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct zs_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct uart_port *uport, unsigned int mctrl)
{
	struct zs_port *zport = FUNC2(uport);
	struct zs_scc *scc = zport->scc;
	struct zs_port *zport_a = &scc->zport[ZS_CHAN_A];
	u8 oldloop, newloop;

	FUNC0(&scc->zlock);
	if (zport != zport_a) {
		if (mctrl & TIOCM_DTR)
			zport_a->regs[5] |= DTR;
		else
			zport_a->regs[5] &= ~DTR;
		if (mctrl & TIOCM_RTS)
			zport_a->regs[5] |= RTS;
		else
			zport_a->regs[5] &= ~RTS;
		FUNC3(zport_a, R5, zport_a->regs[5]);
	}

	/* Rarely modified, so don't poke at hardware unless necessary. */
	oldloop = zport->regs[14];
	newloop = oldloop;
	if (mctrl & TIOCM_LOOP)
		newloop |= LOOPBAK;
	else
		newloop &= ~LOOPBAK;
	if (newloop != oldloop) {
		zport->regs[14] = newloop;
		FUNC3(zport, R14, zport->regs[14]);
	}
	FUNC1(&scc->zlock);
}