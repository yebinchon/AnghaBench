#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  tx; } ;
struct TYPE_7__ {TYPE_2__ icount; TYPE_1__* state; scalar_t__ x_char; } ;
struct uart_pmac_port {TYPE_3__ port; int /*<<< orphan*/  flags; int /*<<< orphan*/  curregs; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_5__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMACZILOG_FLAG_REGS_HELD ; 
 int /*<<< orphan*/  PMACZILOG_FLAG_TX_ACTIVE ; 
 int /*<<< orphan*/  PMACZILOG_FLAG_TX_STOPPED ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  RES_Tx_P ; 
 unsigned char Tx_BUF_EMP ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 scalar_t__ FUNC0 (struct uart_pmac_port*) ; 
 scalar_t__ FUNC1 (struct uart_pmac_port*) ; 
 scalar_t__ FUNC2 (struct uart_pmac_port*) ; 
 scalar_t__ FUNC3 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_pmac_port*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC5 (struct uart_pmac_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct circ_buf*) ; 
 scalar_t__ FUNC7 (struct circ_buf*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_pmac_port*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_pmac_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct uart_pmac_port*) ; 

__attribute__((used)) static void FUNC13(struct uart_pmac_port *uap)
{
	struct circ_buf *xmit;

	if (FUNC0(uap))
		return;
	if (FUNC1(uap)) {
		unsigned char status = FUNC5(uap, R0);

		/* TX still busy?  Just wait for the next TX done interrupt.
		 *
		 * It can occur because of how we do serial console writes.  It would
		 * be nice to transmit console writes just like we normally would for
		 * a TTY line. (ie. buffered and TX interrupt driven).  That is not
		 * easy because console writes cannot sleep.  One solution might be
		 * to poll on enough port->xmit space becomming free.  -DaveM
		 */
		if (!(status & Tx_BUF_EMP))
			return;
	}

	uap->flags &= ~PMACZILOG_FLAG_TX_ACTIVE;

	if (FUNC2(uap)) {
		FUNC4(uap, uap->curregs);
		uap->flags &= ~PMACZILOG_FLAG_REGS_HELD;
	}

	if (FUNC3(uap)) {
		uap->flags &= ~PMACZILOG_FLAG_TX_STOPPED;
		goto ack_tx_int;
	}

	if (uap->port.x_char) {
		uap->flags |= PMACZILOG_FLAG_TX_ACTIVE;
		FUNC10(uap, uap->port.x_char);
		FUNC12(uap);
		uap->port.icount.tx++;
		uap->port.x_char = 0;
		return;
	}

	if (uap->port.state == NULL)
		goto ack_tx_int;
	xmit = &uap->port.state->xmit;
	if (FUNC7(xmit)) {
		FUNC9(&uap->port);
		goto ack_tx_int;
	}
	if (FUNC8(&uap->port))
		goto ack_tx_int;

	uap->flags |= PMACZILOG_FLAG_TX_ACTIVE;
	FUNC10(uap, xmit->buf[xmit->tail]);
	FUNC12(uap);

	xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
	uap->port.icount.tx++;

	if (FUNC6(xmit) < WAKEUP_CHARS)
		FUNC9(&uap->port);

	return;

ack_tx_int:
	FUNC11(uap, R0, RES_Tx_P);
	FUNC12(uap);
}