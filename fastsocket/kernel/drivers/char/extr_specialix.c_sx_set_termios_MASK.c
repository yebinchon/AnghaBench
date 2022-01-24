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
struct tty_struct {scalar_t__ hw_stopped; TYPE_1__* termios; int /*<<< orphan*/  name; struct specialix_port* driver_data; } ;
struct specialix_port {int /*<<< orphan*/  lock; } ;
struct specialix_board {int dummy; } ;
struct ktermios {int c_cflag; } ;
struct TYPE_2__ {int c_cflag; } ;

/* Variables and functions */
 int CRTSCTS ; 
 struct specialix_board* FUNC0 (struct specialix_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct specialix_board*,struct specialix_port*) ; 
 scalar_t__ FUNC4 (struct specialix_port*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty,
					struct ktermios *old_termios)
{
	struct specialix_port *port = tty->driver_data;
	unsigned long flags;
	struct specialix_board  *bp;

	if (FUNC4(port, tty->name, "sx_set_termios"))
		return;

	bp = FUNC0(port);
	FUNC1(&port->lock, flags);
	FUNC3(FUNC0(port), port);
	FUNC2(&port->lock, flags);

	if ((old_termios->c_cflag & CRTSCTS) &&
	    !(tty->termios->c_cflag & CRTSCTS)) {
		tty->hw_stopped = 0;
		FUNC5(tty);
	}
}