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
struct tty_struct {scalar_t__ closing; TYPE_1__* termios; } ;
struct tty_port {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  close_wait; int /*<<< orphan*/  open_wait; scalar_t__ close_delay; scalar_t__ blocked_open; } ;
struct TYPE_2__ {int c_cflag; } ;

/* Variables and functions */
 int ASYNC_CLOSING ; 
 int ASYNC_NORMAL_ACTIVE ; 
 int HUPCL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct tty_port *port, struct tty_struct *tty)
{
	unsigned long flags;

	FUNC4(tty);

	if (tty->termios->c_cflag & HUPCL)
		FUNC5(port);

	FUNC2(&port->lock, flags);
	tty->closing = 0;

	if (port->blocked_open) {
		FUNC3(&port->lock, flags);
		if (port->close_delay) {
			FUNC1(
				FUNC0(port->close_delay));
		}
		FUNC2(&port->lock, flags);
		FUNC6(&port->open_wait);
	}
	port->flags &= ~(ASYNC_NORMAL_ACTIVE | ASYNC_CLOSING);
	FUNC6(&port->close_wait);
	FUNC3(&port->lock, flags);
}