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
struct TYPE_3__ {struct tty_struct* tty; } ;
struct uart_state {TYPE_1__ port; } ;
struct TYPE_4__ {int rx; } ;
struct uart_port {int /*<<< orphan*/  lock; TYPE_2__ icount; struct uart_state* state; } ;
struct tty_struct {int dummy; } ;
struct ioc3_port {int ip_flags; } ;

/* Variables and functions */
 int INPUT_ENABLE ; 
 int MAX_CHARS ; 
 int FUNC0 (struct uart_port*,unsigned char*,int) ; 
 struct ioc3_port* FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC7(struct uart_port *the_port)
{
	struct tty_struct *tty;
	unsigned char ch[MAX_CHARS];
	int read_count = 0, read_room, flip = 0;
	struct uart_state *state = the_port->state;
	struct ioc3_port *port = FUNC1(the_port);
	unsigned long pflags;

	/* Make sure all the pointers are "good" ones */
	if (!state)
		return 0;
	if (!state->port.tty)
		return 0;

	if (!(port->ip_flags & INPUT_ENABLE))
		return 0;

	FUNC2(&the_port->lock, pflags);
	tty = state->port.tty;

	read_count = FUNC0(the_port, ch, MAX_CHARS);
	if (read_count > 0) {
		flip = 1;
		read_room = FUNC4(tty, read_count);
		FUNC6(tty, ch, read_room);
		the_port->icount.rx += read_count;
	}
	FUNC3(&the_port->lock, pflags);

	if (flip)
		FUNC5(tty);

	return read_count;
}