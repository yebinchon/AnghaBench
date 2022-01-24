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
struct swStat {int /*<<< orphan*/  soft_reset_cnt; int /*<<< orphan*/  watchdog_timer_cnt; } ;
struct TYPE_4__ {TYPE_1__* stats_info; } ;
struct s2io_nic {int /*<<< orphan*/  rst_timer_task; TYPE_2__ mac_control; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct swStat sw_stat; } ;

/* Variables and functions */
 struct s2io_nic* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct s2io_nic *sp = FUNC0(dev);
	struct swStat *swstats = &sp->mac_control.stats_info->sw_stat;

	if (FUNC1(dev)) {
		swstats->watchdog_timer_cnt++;
		FUNC2(&sp->rst_timer_task);
		swstats->soft_reset_cnt++;
	}
}