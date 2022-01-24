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
struct tty_port {int /*<<< orphan*/  delta_msr_wait; int /*<<< orphan*/  open_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/ * tty; int /*<<< orphan*/  flags; scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_NORMAL_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct tty_port *port)
{
	unsigned long flags;

	FUNC0(&port->lock, flags);
	port->count = 0;
	port->flags &= ~ASYNC_NORMAL_ACTIVE;
	if (port->tty)
		FUNC2(port->tty);
	port->tty = NULL;
	FUNC1(&port->lock, flags);
	FUNC4(&port->open_wait);
	FUNC4(&port->delta_msr_wait);
	FUNC3(port);
}