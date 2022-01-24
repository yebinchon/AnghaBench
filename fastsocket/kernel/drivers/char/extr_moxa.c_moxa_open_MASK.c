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
struct tty_struct {int index; int /*<<< orphan*/  termios; struct moxa_port* driver_data; } ;
struct TYPE_2__ {scalar_t__ count; int flags; } ;
struct moxa_port {scalar_t__ type; TYPE_1__ port; scalar_t__ statusflags; } ;
struct moxa_board_conf {int numPorts; struct moxa_port* ports; int /*<<< orphan*/  ready; } ;
struct file {int f_flags; } ;

/* Variables and functions */
 int ASYNC_INITIALIZED ; 
 int ASYNC_NORMAL_ACTIVE ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int ENODEV ; 
 int EPERM ; 
 int ERESTARTSYS ; 
 int MAX_PORTS ; 
 int MAX_PORTS_PER_BOARD ; 
 int /*<<< orphan*/  FUNC1 (struct moxa_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct moxa_port*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct moxa_port*,int) ; 
 int O_NONBLOCK ; 
 scalar_t__ PORT_16550A ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct tty_struct*,struct file*,struct moxa_port*) ; 
 struct moxa_board_conf* moxa_boards ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 
 int /*<<< orphan*/  moxa_openlock ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct tty_struct*) ; 

__attribute__((used)) static int FUNC12(struct tty_struct *tty, struct file *filp)
{
	struct moxa_board_conf *brd;
	struct moxa_port *ch;
	int port;
	int retval;

	port = tty->index;
	if (port == MAX_PORTS) {
		return FUNC4(CAP_SYS_ADMIN) ? 0 : -EPERM;
	}
	if (FUNC9(&moxa_openlock))
		return -ERESTARTSYS;
	brd = &moxa_boards[port / MAX_PORTS_PER_BOARD];
	if (!brd->ready) {
		FUNC10(&moxa_openlock);
		return -ENODEV;
	}

	if (port % MAX_PORTS_PER_BOARD >= brd->numPorts) {
		FUNC10(&moxa_openlock);
		return -ENODEV;
	}

	ch = &brd->ports[port % MAX_PORTS_PER_BOARD];
	ch->port.count++;
	tty->driver_data = ch;
	FUNC11(&ch->port, tty);
	if (!(ch->port.flags & ASYNC_INITIALIZED)) {
		ch->statusflags = 0;
		FUNC7(tty, tty->termios);
		FUNC2(ch, 1, 1);
		FUNC1(ch);
		FUNC3(ch, ch->type == PORT_16550A);
		ch->port.flags |= ASYNC_INITIALIZED;
	}
	FUNC10(&moxa_openlock);

	retval = 0;
	if (!(filp->f_flags & O_NONBLOCK) && !FUNC0(tty))
		retval = FUNC5(tty, filp, ch);
	FUNC8(&moxa_openlock);
	if (retval) {
		if (ch->port.count) /* 0 means already hung up... */
			if (--ch->port.count == 0)
				FUNC6(tty);
	} else
		ch->port.flags |= ASYNC_NORMAL_ACTIVE;
	FUNC10(&moxa_openlock);

	return retval;
}