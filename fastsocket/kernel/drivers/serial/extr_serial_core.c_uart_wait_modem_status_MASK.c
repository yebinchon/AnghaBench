#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tty_port {int /*<<< orphan*/  delta_msr_wait; } ;
struct uart_state {struct tty_port port; struct uart_port* uart_port; } ;
struct uart_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  icount; TYPE_1__* ops; } ;
struct uart_icount {scalar_t__ rng; scalar_t__ dsr; scalar_t__ dcd; scalar_t__ cts; } ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* enable_ms ) (struct uart_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 unsigned long TIOCM_CD ; 
 unsigned long TIOCM_CTS ; 
 unsigned long TIOCM_DSR ; 
 unsigned long TIOCM_RNG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (struct uart_icount*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_port*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int
FUNC10(struct uart_state *state, unsigned long arg)
{
	struct uart_port *uport = state->uart_port;
	struct tty_port *port = &state->port;
	FUNC0(wait, current);
	struct uart_icount cprev, cnow;
	int ret;

	/*
	 * note the counters on entry
	 */
	FUNC7(&uport->lock);
	FUNC2(&cprev, &uport->icount, sizeof(struct uart_icount));

	/*
	 * Force modem status interrupts on
	 */
	uport->ops->enable_ms(uport);
	FUNC8(&uport->lock);

	FUNC1(&port->delta_msr_wait, &wait);
	for (;;) {
		FUNC7(&uport->lock);
		FUNC2(&cnow, &uport->icount, sizeof(struct uart_icount));
		FUNC8(&uport->lock);

		FUNC5(TASK_INTERRUPTIBLE);

		if (((arg & TIOCM_RNG) && (cnow.rng != cprev.rng)) ||
		    ((arg & TIOCM_DSR) && (cnow.dsr != cprev.dsr)) ||
		    ((arg & TIOCM_CD)  && (cnow.dcd != cprev.dcd)) ||
		    ((arg & TIOCM_CTS) && (cnow.cts != cprev.cts))) {
			ret = 0;
			break;
		}

		FUNC4();

		/* see if a signal did it */
		if (FUNC6(current)) {
			ret = -ERESTARTSYS;
			break;
		}

		cprev = cnow;
	}

	current->state = TASK_RUNNING;
	FUNC3(&port->delta_msr_wait, &wait);

	return ret;
}