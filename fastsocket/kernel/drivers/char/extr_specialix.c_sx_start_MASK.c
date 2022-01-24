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
struct specialix_port {int IER; int /*<<< orphan*/  lock; scalar_t__ xmit_buf; scalar_t__ xmit_cnt; } ;
struct specialix_board {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CD186x_CAR ; 
 int /*<<< orphan*/  CD186x_IER ; 
 int IER_TXRDY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct specialix_board* FUNC2 (struct specialix_port*) ; 
 int FUNC3 (struct specialix_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct specialix_board*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct specialix_port*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC10(struct tty_struct *tty)
{
	struct specialix_port *port = tty->driver_data;
	struct specialix_board *bp;
	unsigned long flags;

	FUNC0();

	if (FUNC9(port, tty->name, "sx_start")) {
		FUNC1();
		return;
	}

	bp = FUNC2(port);

	FUNC5(&port->lock, flags);
	if (port->xmit_cnt && port->xmit_buf && !(port->IER & IER_TXRDY)) {
		port->IER |= IER_TXRDY;
		FUNC4(&bp->lock);
		FUNC8(bp, CD186x_CAR, FUNC3(port));
		FUNC8(bp, CD186x_IER, port->IER);
		FUNC6(&bp->lock);
	}
	FUNC7(&port->lock, flags);

	FUNC1();
}