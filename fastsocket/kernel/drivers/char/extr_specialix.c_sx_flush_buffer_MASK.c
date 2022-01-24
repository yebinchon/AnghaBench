#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  name; struct specialix_port* driver_data; } ;
struct specialix_port {int /*<<< orphan*/  lock; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; } ;
struct specialix_board {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct specialix_board* FUNC2 (struct specialix_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (struct specialix_port*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC7(struct tty_struct *tty)
{
	struct specialix_port *port = tty->driver_data;
	unsigned long flags;
	struct specialix_board  *bp;

	FUNC0();

	if (FUNC5(port, tty->name, "sx_flush_buffer")) {
		FUNC1();
		return;
	}

	bp = FUNC2(port);
	FUNC3(&port->lock, flags);
	port->xmit_cnt = port->xmit_head = port->xmit_tail = 0;
	FUNC4(&port->lock, flags);
	FUNC6(tty);

	FUNC1();
}