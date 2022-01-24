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
struct tty_struct {struct specialix_port* driver_data; } ;
struct specialix_port {int break_length; int /*<<< orphan*/  lock; int /*<<< orphan*/  IER; int /*<<< orphan*/  COR2; } ;
struct specialix_board {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCR_CORCHG2 ; 
 int /*<<< orphan*/  CD186x_CAR ; 
 int /*<<< orphan*/  CD186x_CCR ; 
 int /*<<< orphan*/  CD186x_COR2 ; 
 int /*<<< orphan*/  CD186x_IER ; 
 int /*<<< orphan*/  COR2_ETC ; 
 int EOPNOTSUPP ; 
 int HZ ; 
 int /*<<< orphan*/  IER_TXRDY ; 
 int SPECIALIX_TPS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct specialix_board* FUNC2 (struct specialix_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct specialix_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct specialix_board*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct specialix_board*) ; 

__attribute__((used)) static int FUNC10(struct tty_struct *tty, int length)
{
	struct specialix_port *port = tty->driver_data;
	struct specialix_board *bp = FUNC2(port);
	unsigned long flags;

	FUNC0();
	if (length == 0 || length == -1)
		return -EOPNOTSUPP;

	FUNC5(&port->lock, flags);
	port->break_length = SPECIALIX_TPS / HZ * length;
	port->COR2 |= COR2_ETC;
	port->IER  |= IER_TXRDY;
	FUNC4(&bp->lock);
	FUNC8(bp, CD186x_CAR, FUNC3(port));
	FUNC8(bp, CD186x_COR2, port->COR2);
	FUNC8(bp, CD186x_IER, port->IER);
	FUNC6(&bp->lock);
	FUNC7(&port->lock, flags);
	FUNC9(bp);
	FUNC5(&bp->lock, flags);
	FUNC8(bp, CD186x_CCR, CCR_CORCHG2);
	FUNC7(&bp->lock, flags);
	FUNC9(bp);

	FUNC1();
	return 0;
}