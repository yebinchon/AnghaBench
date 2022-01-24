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
struct tty_port {int flags; int /*<<< orphan*/  mutex; int /*<<< orphan*/  delta_msr_wait; int /*<<< orphan*/  open_wait; scalar_t__ count; } ;
struct uart_state {TYPE_1__* uart_port; struct tty_port port; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  line; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNCB_NORMAL_ACTIVE ; 
 int ASYNC_NORMAL_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_state*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct tty_struct *tty)
{
	struct uart_state *state = tty->driver_data;
	struct tty_port *port = &state->port;

	FUNC0(!FUNC2());
	FUNC5("uart_hangup(%d)\n", state->uart_port->line);

	FUNC3(&port->mutex);
	if (port->flags & ASYNC_NORMAL_ACTIVE) {
		FUNC7(tty);
		FUNC8(state);
		port->count = 0;
		FUNC1(ASYNCB_NORMAL_ACTIVE, &port->flags);
		FUNC6(port, NULL);
		FUNC9(&port->open_wait);
		FUNC9(&port->delta_msr_wait);
	}
	FUNC4(&port->mutex);
}