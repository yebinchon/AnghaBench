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
struct tty_struct {int /*<<< orphan*/  ctrl_lock; TYPE_1__* link; int /*<<< orphan*/  ctrl_status; } ;
struct TYPE_2__ {int /*<<< orphan*/  read_wait; scalar_t__ packet; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCPKT_FLUSHREAD ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	unsigned long flags;
	/* clear everything and unthrottle the driver */
	FUNC0(tty);

	if (!tty->link)
		return;

	FUNC1(&tty->ctrl_lock, flags);
	if (tty->link->packet) {
		tty->ctrl_status |= TIOCPKT_FLUSHREAD;
		FUNC3(&tty->link->read_wait);
	}
	FUNC2(&tty->ctrl_lock, flags);
}