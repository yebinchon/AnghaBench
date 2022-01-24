#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; TYPE_2__* tty; } ;
struct slgt_info {TYPE_3__ port; int /*<<< orphan*/  lock; int /*<<< orphan*/  gpio_wait_q; int /*<<< orphan*/  signals; int /*<<< orphan*/ * tx_buf; int /*<<< orphan*/  rx_timer; int /*<<< orphan*/  tx_timer; int /*<<< orphan*/  event_wait_q; int /*<<< orphan*/  status_event_wait_q; int /*<<< orphan*/  device_name; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; TYPE_1__* termios; } ;
struct TYPE_4__ {int c_cflag; } ;

/* Variables and functions */
 int ASYNC_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int HUPCL ; 
 int IRQ_ALL ; 
 int IRQ_MASTER ; 
 int /*<<< orphan*/  SerialSignal_DTR ; 
 int /*<<< orphan*/  SerialSignal_RTS ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct slgt_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct slgt_info *info)
{
	unsigned long flags;

	if (!(info->port.flags & ASYNC_INITIALIZED))
		return;

	FUNC0(("%s shutdown\n", info->device_name));

	/* clear status wait queue because status changes */
	/* can't happen after shutting down the hardware */
	FUNC11(&info->status_event_wait_q);
	FUNC11(&info->event_wait_q);

	FUNC1(&info->tx_timer);
	FUNC1(&info->rx_timer);

	FUNC3(info->tx_buf);
	info->tx_buf = NULL;

	FUNC8(&info->lock,flags);

	FUNC10(info);
	FUNC4(info);

	FUNC7(info, IRQ_ALL | IRQ_MASTER);

 	if (!info->port.tty || info->port.tty->termios->c_cflag & HUPCL) {
 		info->signals &= ~(SerialSignal_DTR + SerialSignal_RTS);
		FUNC6(info);
	}

	FUNC2(&info->gpio_wait_q);

	FUNC9(&info->lock,flags);

	if (info->port.tty)
		FUNC5(TTY_IO_ERROR, &info->port.tty->flags);

	info->port.flags &= ~ASYNC_INITIALIZED;
}