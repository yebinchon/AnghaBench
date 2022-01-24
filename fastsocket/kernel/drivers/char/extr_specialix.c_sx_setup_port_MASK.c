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
struct TYPE_4__ {int flags; TYPE_1__* tty; } ;
struct specialix_port {unsigned char* xmit_buf; int /*<<< orphan*/  lock; TYPE_2__ port; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; } ;
struct specialix_board {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ASYNC_INITIALIZED ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct specialix_board*,struct specialix_port*) ; 

__attribute__((used)) static int FUNC8(struct specialix_board *bp,
						struct specialix_port *port)
{
	unsigned long flags;

	FUNC2();

	if (port->port.flags & ASYNC_INITIALIZED) {
		FUNC3();
		return 0;
	}

	if (!port->xmit_buf) {
		/* We may sleep in get_zeroed_page() */
		unsigned long tmp;

		tmp = FUNC4(GFP_KERNEL);
		if (tmp == 0L) {
			FUNC3();
			return -ENOMEM;
		}

		if (port->xmit_buf) {
			FUNC1(tmp);
			FUNC3();
			return -ERESTARTSYS;
		}
		port->xmit_buf = (unsigned char *) tmp;
	}

	FUNC5(&port->lock, flags);

	if (port->port.tty)
		FUNC0(TTY_IO_ERROR, &port->port.tty->flags);

	port->xmit_cnt = port->xmit_head = port->xmit_tail = 0;
	FUNC7(bp, port);
	port->port.flags |= ASYNC_INITIALIZED;

	FUNC6(&port->lock, flags);


	FUNC3();
	return 0;
}