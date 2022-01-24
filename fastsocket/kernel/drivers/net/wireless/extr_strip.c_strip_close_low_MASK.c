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
struct strip {int /*<<< orphan*/  idle_timer; int /*<<< orphan*/ * tx_buff; int /*<<< orphan*/ * sx_buff; int /*<<< orphan*/ * rx_buff; TYPE_1__* tty; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct strip* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct strip *strip_info = FUNC3(dev);

	if (strip_info->tty == NULL)
		return -EBUSY;
	FUNC0(TTY_DO_WRITE_WAKEUP, &strip_info->tty->flags);
	FUNC4(dev);

	/*
	 * Free all STRIP frame buffers.
	 */
	FUNC2(strip_info->rx_buff);
	strip_info->rx_buff = NULL;
	FUNC2(strip_info->sx_buff);
	strip_info->sx_buff = NULL;
	FUNC2(strip_info->tx_buff);
	strip_info->tx_buff = NULL;

	FUNC1(&strip_info->idle_timer);
	return 0;
}