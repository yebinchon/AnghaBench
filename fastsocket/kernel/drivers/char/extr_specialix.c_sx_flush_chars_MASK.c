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
struct tty_struct {scalar_t__ hw_stopped; scalar_t__ stopped; int /*<<< orphan*/  name; struct specialix_port* driver_data; } ;
struct specialix_port {scalar_t__ xmit_cnt; int /*<<< orphan*/  IER; int /*<<< orphan*/  xmit_buf; } ;
struct specialix_board {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CD186x_CAR ; 
 int /*<<< orphan*/  CD186x_IER ; 
 int /*<<< orphan*/  IER_TXRDY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct specialix_board* FUNC2 (struct specialix_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct specialix_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct specialix_board*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct specialix_port*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC8(struct tty_struct *tty)
{
	struct specialix_port *port = tty->driver_data;
	unsigned long flags;
	struct specialix_board  *bp = FUNC2(port);

	FUNC0();

	if (FUNC7(port, tty->name, "sx_flush_chars")) {
		FUNC1();
		return;
	}
	if (port->xmit_cnt <= 0 || tty->stopped || tty->hw_stopped ||
	    !port->xmit_buf) {
		FUNC1();
		return;
	}
	FUNC4(&bp->lock, flags);
	port->IER |= IER_TXRDY;
	FUNC6(FUNC2(port), CD186x_CAR, FUNC3(port));
	FUNC6(FUNC2(port), CD186x_IER, port->IER);
	FUNC5(&bp->lock, flags);

	FUNC1();
}