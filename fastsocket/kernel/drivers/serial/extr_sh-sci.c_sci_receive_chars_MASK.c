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
struct TYPE_6__ {int rx; } ;
struct uart_port {scalar_t__ type; TYPE_3__ icount; int /*<<< orphan*/  dev; TYPE_2__* state; } ;
struct tty_struct {int dummy; } ;
struct sci_port {scalar_t__ break_flag; } ;
struct TYPE_4__ {struct tty_struct* tty; } ;
struct TYPE_5__ {TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ PORT_SCI ; 
 int /*<<< orphan*/  SCxRDR ; 
 int /*<<< orphan*/  SCxSR ; 
 unsigned short FUNC0 (struct uart_port*) ; 
 unsigned short FUNC1 (struct uart_port*) ; 
 unsigned short FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 scalar_t__ FUNC4 (char) ; 
 unsigned char TTY_FRAME ; 
 unsigned char TTY_NORMAL ; 
 unsigned char TTY_PARITY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC7 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct uart_port*) ; 
 int FUNC10 (struct uart_port*) ; 
 struct sci_port* FUNC11 (struct uart_port*) ; 
 int FUNC12 (struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC14 (struct tty_struct*,char,unsigned char) ; 
 scalar_t__ FUNC15 (struct uart_port*,char) ; 

__attribute__((used)) static inline void FUNC16(struct uart_port *port)
{
	struct sci_port *sci_port = FUNC11(port);
	struct tty_struct *tty = port->state->port.tty;
	int i, count, copied = 0;
	unsigned short status;
	unsigned char flag;

	status = FUNC7(port, SCxSR);
	if (!(status & FUNC2(port)))
		return;

	while (1) {
		if (port->type == PORT_SCI)
			count = FUNC9(port);
		else
			count = FUNC10(port);

		/* Don't copy more bytes than there is room for in the buffer */
		count = FUNC12(tty, count);

		/* If for any reason we can't copy more data, we're done! */
		if (count == 0)
			break;

		if (port->type == PORT_SCI) {
			char c = FUNC7(port, SCxRDR);
			if (FUNC15(port, c) ||
			    sci_port->break_flag)
				count = 0;
			else
				FUNC14(tty, c, TTY_NORMAL);
		} else {
			for (i = 0; i < count; i++) {
				char c = FUNC7(port, SCxRDR);
				status = FUNC7(port, SCxSR);
#if defined(CONFIG_CPU_SH3)
				/* Skip "chars" during break */
				if (sci_port->break_flag) {
					if ((c == 0) &&
					    (status & SCxSR_FER(port))) {
						count--; i--;
						continue;
					}

					/* Nonzero => end-of-break */
					dev_dbg(port->dev, "debounce<%02x>\n", c);
					sci_port->break_flag = 0;

					if (STEPFN(c)) {
						count--; i--;
						continue;
					}
				}
#endif /* CONFIG_CPU_SH3 */
				if (FUNC15(port, c)) {
					count--; i--;
					continue;
				}

				/* Store data and status */
				if (status&FUNC0(port)) {
					flag = TTY_FRAME;
					FUNC6(port->dev, "frame error\n");
				} else if (status&FUNC1(port)) {
					flag = TTY_PARITY;
					FUNC6(port->dev, "parity error\n");
				} else
					flag = TTY_NORMAL;

				FUNC14(tty, c, flag);
			}
		}

		FUNC7(port, SCxSR); /* dummy read */
		FUNC8(port, SCxSR, FUNC3(port));

		copied += count;
		port->icount.rx += count;
	}

	if (copied) {
		/* Tell the rest of the system the news. New characters! */
		FUNC13(tty);
	} else {
		FUNC7(port, SCxSR); /* dummy read */
		FUNC8(port, SCxSR, FUNC3(port));
	}
}