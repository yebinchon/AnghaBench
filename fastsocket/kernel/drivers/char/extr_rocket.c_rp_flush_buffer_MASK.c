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
struct tty_struct {int /*<<< orphan*/  poll_wait; struct r_port* driver_data; } ;
struct r_port {int /*<<< orphan*/  channel; int /*<<< orphan*/  slock; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; } ;
typedef  int /*<<< orphan*/  CHANNEL_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct r_port*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty)
{
	struct r_port *info = tty->driver_data;
	CHANNEL_t *cp;
	unsigned long flags;

	if (FUNC0(info, "rp_flush_buffer"))
		return;

	FUNC2(&info->slock, flags);
	info->xmit_cnt = info->xmit_head = info->xmit_tail = 0;
	FUNC3(&info->slock, flags);

#ifdef ROCKETPORT_HAVE_POLL_WAIT
	wake_up_interruptible(&tty->poll_wait);
#endif
	FUNC4(tty);

	cp = &info->channel;
	FUNC1(cp);
}