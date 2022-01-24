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
struct TYPE_7__ {int head; int tail; int /*<<< orphan*/ * buf; } ;
struct TYPE_5__ {struct tty_struct* tty; } ;
struct uart_state {TYPE_3__ xmit; TYPE_1__ port; } ;
struct TYPE_6__ {int tx; } ;
struct uart_port {TYPE_2__ icount; struct uart_state* state; } ;
struct tty_struct {int dummy; } ;
struct ioc3_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  N_ALL_OUTPUT ; 
 int /*<<< orphan*/  N_OUTPUT_LOWAT ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int FUNC0 (struct ioc3_port*,char*,int) ; 
 struct ioc3_port* FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct ioc3_port*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 

__attribute__((used)) static void FUNC7(struct uart_port *the_port)
{
	int xmit_count, tail, head;
	int result;
	char *start;
	struct tty_struct *tty;
	struct ioc3_port *port = FUNC1(the_port);
	struct uart_state *state;

	if (!the_port)
		return;
	if (!port)
		return;

	state = the_port->state;
	tty = state->port.tty;

	if (FUNC4(&state->xmit) || FUNC5(the_port)) {
		/* Nothing to do or hw stopped */
		FUNC2(port, N_ALL_OUTPUT, 0);
		return;
	}

	head = state->xmit.head;
	tail = state->xmit.tail;
	start = (char *)&state->xmit.buf[tail];

	/* write out all the data or until the end of the buffer */
	xmit_count = (head < tail) ? (UART_XMIT_SIZE - tail) : (head - tail);
	if (xmit_count > 0) {
		result = FUNC0(port, start, xmit_count);
		if (result > 0) {
			/* booking */
			xmit_count -= result;
			the_port->icount.tx += result;
			/* advance the pointers */
			tail += result;
			tail &= UART_XMIT_SIZE - 1;
			state->xmit.tail = tail;
			start = (char *)&state->xmit.buf[tail];
		}
	}
	if (FUNC3(&state->xmit) < WAKEUP_CHARS)
		FUNC6(the_port);

	if (FUNC4(&state->xmit)) {
		FUNC2(port, N_OUTPUT_LOWAT, 0);
	} else {
		FUNC2(port, N_OUTPUT_LOWAT, 1);
	}
}