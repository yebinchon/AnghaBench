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
struct tty_struct {int stopped; TYPE_2__* ops; int /*<<< orphan*/  ctrl_lock; TYPE_1__* link; int /*<<< orphan*/  ctrl_status; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* stop ) (struct tty_struct*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  read_wait; scalar_t__ packet; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  TIOCPKT_START ; 
 int /*<<< orphan*/  TIOCPKT_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(struct tty_struct *tty)
{
	unsigned long flags;
	FUNC0(&tty->ctrl_lock, flags);
	if (tty->stopped) {
		FUNC1(&tty->ctrl_lock, flags);
		return;
	}
	tty->stopped = 1;
	if (tty->link && tty->link->packet) {
		tty->ctrl_status &= ~TIOCPKT_START;
		tty->ctrl_status |= TIOCPKT_STOP;
		FUNC3(&tty->link->read_wait, POLLIN);
	}
	FUNC1(&tty->ctrl_lock, flags);
	if (tty->ops->stop)
		(tty->ops->stop)(tty);
}