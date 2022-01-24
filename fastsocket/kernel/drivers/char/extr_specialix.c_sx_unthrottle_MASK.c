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
struct specialix_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  MSVR; } ;
struct specialix_board {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCR_SSCH1 ; 
 int /*<<< orphan*/  CD186x_CAR ; 
 int /*<<< orphan*/  CD186x_CCR ; 
 int /*<<< orphan*/  CD186x_MSVR ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  MSVR_DTR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct specialix_board* FUNC3 (struct specialix_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct specialix_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct specialix_board*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct specialix_port*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct specialix_board*) ; 

__attribute__((used)) static void FUNC13(struct tty_struct *tty)
{
	struct specialix_port *port = tty->driver_data;
	struct specialix_board *bp;
	unsigned long flags;

	FUNC1();

	if (FUNC11(port, tty->name, "sx_unthrottle")) {
		FUNC2();
		return;
	}

	bp = FUNC3(port);

	FUNC6(&port->lock, flags);
	/* XXXX Use DTR INSTEAD???? */
	if (FUNC9(tty))
		port->MSVR |= MSVR_DTR;
	/* Else clause: see remark in "sx_throttle"... */
	FUNC5(&bp->lock);
	FUNC10(bp, CD186x_CAR, FUNC4(port));
	FUNC7(&bp->lock);
	if (FUNC0(tty)) {
		FUNC8(&port->lock, flags);
		FUNC12(bp);
		FUNC6(&bp->lock, flags);
		FUNC10(bp, CD186x_CCR, CCR_SSCH1);
		FUNC8(&bp->lock, flags);
		FUNC12(bp);
		FUNC6(&port->lock, flags);
	}
	FUNC5(&bp->lock);
	FUNC10(bp, CD186x_MSVR, port->MSVR);
	FUNC7(&bp->lock);
	FUNC8(&port->lock, flags);

	FUNC2();
}