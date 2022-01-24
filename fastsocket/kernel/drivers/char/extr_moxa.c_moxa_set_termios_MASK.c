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
struct tty_struct {struct moxa_port* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  open_wait; } ;
struct moxa_port {TYPE_1__ port; } ;
struct ktermios {int c_cflag; } ;

/* Variables and functions */
 int CLOCAL ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty,
		struct ktermios *old_termios)
{
	struct moxa_port *ch = tty->driver_data;

	if (ch == NULL)
		return;
	FUNC1(tty, old_termios);
	if (!(old_termios->c_cflag & CLOCAL) && FUNC0(tty))
		FUNC2(&ch->port.open_wait);
}