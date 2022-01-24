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
struct tty_struct {struct gs_port* driver_data; } ;
struct gs_port {int /*<<< orphan*/  driver_lock; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 

void FUNC5(struct tty_struct *tty)
{
	struct gs_port *port;
	unsigned long flags;

	FUNC0 ();

	port = tty->driver_data;

	if (!port) return;

	/* XXX Would the write semaphore do? */
	FUNC2 (&port->driver_lock, flags);
	port->xmit_cnt = port->xmit_head = port->xmit_tail = 0;
	FUNC3 (&port->driver_lock, flags);

	FUNC4(tty);
	FUNC1 ();
}