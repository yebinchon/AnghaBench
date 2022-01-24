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
struct tty_struct {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  brk; int /*<<< orphan*/  rx; } ;
struct TYPE_10__ {unsigned int read_status_mask; scalar_t__ sysrq; TYPE_3__ icount; TYPE_2__* state; } ;
struct pnx8xxx_port {TYPE_4__ port; } ;
struct TYPE_7__ {struct tty_struct* tty; } ;
struct TYPE_8__ {TYPE_1__ port; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  PNX8XXX_FIFO ; 
 int /*<<< orphan*/  PNX8XXX_ISTAT ; 
 int /*<<< orphan*/  PNX8XXX_LCR ; 
 int PNX8XXX_UART_FIFO_RXBRK ; 
 int PNX8XXX_UART_FIFO_RXFE ; 
 int PNX8XXX_UART_FIFO_RXFIFO ; 
 int PNX8XXX_UART_FIFO_RXPAR ; 
 int PNX8XXX_UART_INT_RXOVRN ; 
 int PNX8XXX_UART_LCR_RX_NEXT ; 
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_PARITY ; 
 int FUNC2 (struct pnx8xxx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pnx8xxx_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,unsigned int,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct pnx8xxx_port *sport)
{
	struct tty_struct *tty = sport->port.state->port.tty;
	unsigned int status, ch, flg;

	status = FUNC0(FUNC2(sport, PNX8XXX_FIFO)) |
		 FUNC1(FUNC2(sport, PNX8XXX_ISTAT));
	while (status & FUNC0(PNX8XXX_UART_FIFO_RXFIFO)) {
		ch = FUNC2(sport, PNX8XXX_FIFO) & 0xff;

		sport->port.icount.rx++;

		flg = TTY_NORMAL;

		/*
		 * note that the error handling code is
		 * out of the main execution path
		 */
		if (status & (FUNC0(PNX8XXX_UART_FIFO_RXFE |
					PNX8XXX_UART_FIFO_RXPAR |
					PNX8XXX_UART_FIFO_RXBRK) |
			      FUNC1(PNX8XXX_UART_INT_RXOVRN))) {
			if (status & FUNC0(PNX8XXX_UART_FIFO_RXBRK)) {
				status &= ~(FUNC0(PNX8XXX_UART_FIFO_RXFE) |
					FUNC0(PNX8XXX_UART_FIFO_RXPAR));
				sport->port.icount.brk++;
				if (FUNC5(&sport->port))
					goto ignore_char;
			} else if (status & FUNC0(PNX8XXX_UART_FIFO_RXPAR))
				sport->port.icount.parity++;
			else if (status & FUNC0(PNX8XXX_UART_FIFO_RXFE))
				sport->port.icount.frame++;
			if (status & FUNC1(PNX8XXX_UART_INT_RXOVRN))
				sport->port.icount.overrun++;

			status &= sport->port.read_status_mask;

			if (status & FUNC0(PNX8XXX_UART_FIFO_RXPAR))
				flg = TTY_PARITY;
			else if (status & FUNC0(PNX8XXX_UART_FIFO_RXFE))
				flg = TTY_FRAME;

#ifdef SUPPORT_SYSRQ
			sport->port.sysrq = 0;
#endif
		}

		if (FUNC6(&sport->port, ch))
			goto ignore_char;

		FUNC7(&sport->port, status,
				FUNC1(PNX8XXX_UART_INT_RXOVRN), ch, flg);

	ignore_char:
		FUNC3(sport, PNX8XXX_LCR, FUNC2(sport, PNX8XXX_LCR) |
				PNX8XXX_UART_LCR_RX_NEXT);
		status = FUNC0(FUNC2(sport, PNX8XXX_FIFO)) |
			 FUNC1(FUNC2(sport, PNX8XXX_ISTAT));
	}
	FUNC4(tty);
}