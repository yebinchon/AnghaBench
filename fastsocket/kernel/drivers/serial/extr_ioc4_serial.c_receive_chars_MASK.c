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
struct TYPE_2__ {struct tty_struct* tty; } ;
struct uart_state {TYPE_1__ port; } ;
struct uart_icount {int rx; } ;
struct uart_port {int /*<<< orphan*/  lock; struct uart_icount icount; struct uart_state* state; } ;
struct tty_struct {int dummy; } ;

/* Variables and functions */
 int IOC4_MAX_CHARS ; 
 int FUNC0 (struct uart_port*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*,unsigned char*,int) ; 

__attribute__((used)) static void FUNC6(struct uart_port *the_port)
{
	struct tty_struct *tty;
	unsigned char ch[IOC4_MAX_CHARS];
	int read_count, request_count = IOC4_MAX_CHARS;
	struct uart_icount *icount;
	struct uart_state *state = the_port->state;
	unsigned long pflags;

	/* Make sure all the pointers are "good" ones */
	if (!state)
		return;
	if (!state->port.tty)
		return;

	FUNC1(&the_port->lock, pflags);
	tty = state->port.tty;

	request_count = FUNC3(tty, IOC4_MAX_CHARS);

	if (request_count > 0) {
		icount = &the_port->icount;
		read_count = FUNC0(the_port, ch, request_count);
		if (read_count > 0) {
			FUNC5(tty, ch, read_count);
			icount->rx += read_count;
		}
	}

	FUNC2(&the_port->lock, pflags);

	FUNC4(tty);
}