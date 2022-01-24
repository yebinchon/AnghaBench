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
struct tty_struct {struct specialix_port* driver_data; int /*<<< orphan*/  name; int /*<<< orphan*/  index; } ;
struct TYPE_2__ {struct tty_struct* tty; int /*<<< orphan*/  count; } ;
struct specialix_port {TYPE_1__ port; scalar_t__* hits; scalar_t__ overrun; } ;
struct specialix_board {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  count; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SX_BOARD_PRESENT ; 
 int /*<<< orphan*/  SX_DEBUG_OPEN ; 
 int SX_NBOARD ; 
 int SX_NPORT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tty_struct*,struct file*,struct specialix_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,struct specialix_board*,struct specialix_port*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct specialix_board* sx_board ; 
 scalar_t__ FUNC8 (struct specialix_port*,int /*<<< orphan*/ ,char*) ; 
 struct specialix_port* sx_port ; 
 int FUNC9 (struct specialix_board*) ; 
 int FUNC10 (struct specialix_board*,struct specialix_port*) ; 

__attribute__((used)) static int FUNC11(struct tty_struct *tty, struct file *filp)
{
	int board;
	int error;
	struct specialix_port *port;
	struct specialix_board *bp;
	int i;
	unsigned long flags;

	FUNC4();

	board = FUNC0(tty->index);

	if (board >= SX_NBOARD || !(sx_board[board].flags & SX_BOARD_PRESENT)) {
		FUNC5();
		return -ENODEV;
	}

	bp = &sx_board[board];
	port = sx_port + board * SX_NPORT + FUNC1(tty->index);
	port->overrun = 0;
	for (i = 0; i < 10; i++)
		port->hits[i] = 0;

	FUNC3(SX_DEBUG_OPEN,
			"Board = %d, bp = %p, port = %p, portno = %d.\n",
				 board, bp, port, FUNC1(tty->index));

	if (FUNC8(port, tty->name, "sx_open")) {
		FUNC4();
		return -ENODEV;
	}

	error = FUNC9(bp);
	if (error) {
		FUNC5();
		return error;
	}

	FUNC6(&bp->lock, flags);
	port->port.count++;
	bp->count++;
	tty->driver_data = port;
	port->port.tty = tty;
	FUNC7(&bp->lock, flags);

	error = FUNC10(bp, port);
	if (error) {
		FUNC4();
		return error;
	}

	error = FUNC2(tty, filp, port);
	if (error) {
		FUNC4();
		return error;
	}

	FUNC5();
	return 0;
}