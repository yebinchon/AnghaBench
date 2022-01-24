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
struct tty_port {int count; int flags; int /*<<< orphan*/  mutex; } ;
struct uart_state {TYPE_2__* uart_port; struct tty_port port; } ;
struct uart_driver {int dummy; } ;
struct tty_struct {int index; int low_latency; scalar_t__ alt_speed; struct uart_state* driver_data; TYPE_1__* driver; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int flags; struct uart_state* state; } ;
struct TYPE_3__ {int num; scalar_t__ driver_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNCB_NORMAL_ACTIVE ; 
 int ASYNC_NORMAL_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct uart_state*) ; 
 int FUNC2 (struct uart_state*) ; 
 int UPF_LOW_LATENCY ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (struct file*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_port*,struct tty_struct*) ; 
 int FUNC9 (struct file*,struct uart_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_state*,int /*<<< orphan*/ ) ; 
 struct uart_state* FUNC11 (struct uart_driver*,int) ; 
 int FUNC12 (struct uart_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct uart_state*) ; 

__attribute__((used)) static int FUNC14(struct tty_struct *tty, struct file *filp)
{
	struct uart_driver *drv = (struct uart_driver *)tty->driver->driver_state;
	struct uart_state *state;
	struct tty_port *port;
	int retval, line = tty->index;

	FUNC0(!FUNC3());
	FUNC5("uart_open(%d) called\n", line);

	/*
	 * tty->driver->num won't change, so we won't fail here with
	 * tty->driver_data set to something non-NULL (and therefore
	 * we won't get caught by uart_close()).
	 */
	retval = -ENODEV;
	if (line >= tty->driver->num)
		goto fail;

	/*
	 * We take the semaphore inside uart_get to guarantee that we won't
	 * be re-entered while allocating the state structure, or while we
	 * request any IRQs that the driver may need.  This also has the nice
	 * side-effect that it delays the action of uart_hangup, so we can
	 * guarantee that state->port.tty will always contain something
	 * reasonable.
	 */
	state = FUNC11(drv, line);
	if (FUNC1(state)) {
		retval = FUNC2(state);
		goto fail;
	}
	port = &state->port;

	/*
	 * Once we set tty->driver_data here, we are guaranteed that
	 * uart_close() will decrement the driver module use count.
	 * Any failures from here onwards should not touch the count.
	 */
	tty->driver_data = state;
	state->uart_port->state = state;
	tty->low_latency = (state->uart_port->flags & UPF_LOW_LATENCY) ? 1 : 0;
	tty->alt_speed = 0;
	FUNC8(port, tty);

	/*
	 * If the port is in the middle of closing, bail out now.
	 */
	if (FUNC7(filp)) {
		retval = -EAGAIN;
		port->count--;
		FUNC4(&port->mutex);
		goto fail;
	}

	/*
	 * Make sure the device is in D0 state.
	 */
	if (port->count == 1)
		FUNC10(state, 0);

	/*
	 * Start up the serial port.
	 */
	retval = FUNC12(state, 0);

	/*
	 * If we succeeded, wait until the port is ready.
	 */
	if (retval == 0)
		retval = FUNC9(filp, state);
	FUNC4(&port->mutex);

	/*
	 * If this is the first open to succeed, adjust things to suit.
	 */
	if (retval == 0 && !(port->flags & ASYNC_NORMAL_ACTIVE)) {
		FUNC6(ASYNCB_NORMAL_ACTIVE, &port->flags);

		FUNC13(state);
	}

fail:
	return retval;
}