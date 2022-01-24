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
struct tty_struct {int /*<<< orphan*/  ctrl_lock; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  ctrl_status; scalar_t__ packet; struct tty_struct* link; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCPKT_FLUSHWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty)
{
	struct tty_struct *to = tty->link;
	unsigned long flags;

	if (!to)
		return;
	/* tty_buffer_flush(to); FIXME */
	if (to->packet) {
		FUNC0(&tty->ctrl_lock, flags);
		tty->ctrl_status |= TIOCPKT_FLUSHWRITE;
		FUNC2(&to->read_wait);
		FUNC1(&tty->ctrl_lock, flags);
	}
}