#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int count; int closing; int /*<<< orphan*/  name; struct async_struct* driver_data; } ;
struct serial_state {int count; } ;
struct file {int dummy; } ;
struct async_struct {int flags; scalar_t__ closing_wait; int /*<<< orphan*/  close_wait; int /*<<< orphan*/  open_wait; scalar_t__ close_delay; scalar_t__ blocked_open; int /*<<< orphan*/ * tty; scalar_t__ event; int /*<<< orphan*/  timeout; int /*<<< orphan*/  read_status_mask; int /*<<< orphan*/  line; struct serial_state* state; } ;
struct TYPE_2__ {void* intreq; void* intena; } ;

/* Variables and functions */
 int ASYNC_CLOSING ; 
 scalar_t__ ASYNC_CLOSING_WAIT_NONE ; 
 int ASYNC_INITIALIZED ; 
 int ASYNC_NORMAL_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* IF_RBF ; 
 int /*<<< orphan*/  UART_LSR_DR ; 
 TYPE_1__ custom ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct async_struct*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct async_struct*) ; 
 scalar_t__ FUNC11 (struct file*) ; 
 int /*<<< orphan*/  FUNC12 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct tty_struct*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct tty_struct *tty, struct file * filp)
{
	struct async_struct * info = tty->driver_data;
	struct serial_state *state;
	unsigned long flags;

	if (!info || FUNC9(info, tty->name, "rs_close"))
		return;

	state = info->state;

	FUNC3(flags);

	if (FUNC11(filp)) {
		FUNC0("before DEC-hung");
		FUNC2(flags);
		return;
	}

#ifdef SERIAL_DEBUG_OPEN
	printk("rs_close ttys%d, count = %d\n", info->line, state->count);
#endif
	if ((tty->count == 1) && (state->count != 1)) {
		/*
		 * Uh, oh.  tty->count is 1, which means that the tty
		 * structure will be freed.  state->count should always
		 * be one in these conditions.  If it's greater than
		 * one, we've got real problems, since it means the
		 * serial port won't be shutdown.
		 */
		FUNC6("rs_close: bad serial port count; tty->count is 1, "
		       "state->count is %d\n", state->count);
		state->count = 1;
	}
	if (--state->count < 0) {
		FUNC6("rs_close: bad serial port count for ttys%d: %d\n",
		       info->line, state->count);
		state->count = 0;
	}
	if (state->count) {
		FUNC0("before DEC-2");
		FUNC2(flags);
		return;
	}
	info->flags |= ASYNC_CLOSING;
	/*
	 * Now we wait for the transmit buffer to clear; and we notify 
	 * the line discipline to only process XON/XOFF characters.
	 */
	tty->closing = 1;
	if (info->closing_wait != ASYNC_CLOSING_WAIT_NONE)
		FUNC13(tty, info->closing_wait);
	/*
	 * At this point we stop accepting input.  To do this, we
	 * disable the receive line status interrupts, and tell the
	 * interrupt driver to stop checking the data ready bit in the
	 * line status register.
	 */
	info->read_status_mask &= ~UART_LSR_DR;
	if (info->flags & ASYNC_INITIALIZED) {
	        /* disable receive interrupts */
	        custom.intena = IF_RBF;
		FUNC4();
		/* clear any pending receive interrupt */
		custom.intreq = IF_RBF;
		FUNC4();

		/*
		 * Before we drop DTR, make sure the UART transmitter
		 * has completely drained; this is especially
		 * important if there is a transmit FIFO!
		 */
		FUNC8(tty, info->timeout);
	}
	FUNC10(info);
	FUNC7(tty);
		
	FUNC12(tty);
	tty->closing = 0;
	info->event = 0;
	info->tty = NULL;
	if (info->blocked_open) {
		if (info->close_delay) {
			FUNC5(FUNC1(info->close_delay));
		}
		FUNC14(&info->open_wait);
	}
	info->flags &= ~(ASYNC_NORMAL_ACTIVE|ASYNC_CLOSING);
	FUNC14(&info->close_wait);
	FUNC2(flags);
}