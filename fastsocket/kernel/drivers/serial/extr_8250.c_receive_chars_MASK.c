#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  brk; int /*<<< orphan*/  rx; } ;
struct TYPE_10__ {unsigned char read_status_mask; int /*<<< orphan*/  lock; TYPE_3__ icount; TYPE_2__* state; } ;
struct uart_8250_port {unsigned char lsr_saved_flags; TYPE_4__ port; } ;
struct tty_struct {int dummy; } ;
struct TYPE_7__ {struct tty_struct* tty; } ;
struct TYPE_8__ {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char TTY_BREAK ; 
 char TTY_FRAME ; 
 char TTY_NORMAL ; 
 char TTY_PARITY ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned char UART_LSR_BI ; 
 unsigned char UART_LSR_BRK_ERROR_BITS ; 
 unsigned char UART_LSR_DR ; 
 unsigned char UART_LSR_FE ; 
 unsigned char UART_LSR_OE ; 
 unsigned char UART_LSR_PE ; 
 int /*<<< orphan*/  UART_RX ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 unsigned char FUNC2 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,unsigned char,unsigned char,unsigned char,char) ; 
 scalar_t__ FUNC9 (unsigned char) ; 

__attribute__((used)) static void
FUNC10(struct uart_8250_port *up, unsigned int *status)
{
	struct tty_struct *tty = up->port.state->port.tty;
	unsigned char ch, lsr = *status;
	int max_count = 256;
	char flag;

	do {
		if (FUNC1(lsr & UART_LSR_DR))
			ch = FUNC2(up, UART_RX);
		else
			/*
			 * Intel 82571 has a Serial Over Lan device that will
			 * set UART_LSR_BI without setting UART_LSR_DR when
			 * it receives a break. To avoid reading from the
			 * receive buffer without UART_LSR_DR bit set, we
			 * just force the read character to be 0
			 */
			ch = 0;

		flag = TTY_NORMAL;
		up->port.icount.rx++;

		lsr |= up->lsr_saved_flags;
		up->lsr_saved_flags = 0;

		if (FUNC9(lsr & UART_LSR_BRK_ERROR_BITS)) {
			/*
			 * For statistics only
			 */
			if (lsr & UART_LSR_BI) {
				lsr &= ~(UART_LSR_FE | UART_LSR_PE);
				up->port.icount.brk++;
				/*
				 * We do the SysRQ and SAK checking
				 * here because otherwise the break
				 * may get masked by ignore_status_mask
				 * or read_status_mask.
				 */
				if (FUNC6(&up->port))
					goto ignore_char;
			} else if (lsr & UART_LSR_PE)
				up->port.icount.parity++;
			else if (lsr & UART_LSR_FE)
				up->port.icount.frame++;
			if (lsr & UART_LSR_OE)
				up->port.icount.overrun++;

			/*
			 * Mask off conditions which should be ignored.
			 */
			lsr &= up->port.read_status_mask;

			if (lsr & UART_LSR_BI) {
				FUNC0("handling break....");
				flag = TTY_BREAK;
			} else if (lsr & UART_LSR_PE)
				flag = TTY_PARITY;
			else if (lsr & UART_LSR_FE)
				flag = TTY_FRAME;
		}
		if (FUNC7(&up->port, ch))
			goto ignore_char;

		FUNC8(&up->port, lsr, UART_LSR_OE, ch, flag);

ignore_char:
		lsr = FUNC2(up, UART_LSR);
	} while ((lsr & (UART_LSR_DR | UART_LSR_BI)) && (max_count-- > 0));
	FUNC4(&up->port.lock);
	FUNC5(tty);
	FUNC3(&up->port.lock);
	*status = lsr;
}