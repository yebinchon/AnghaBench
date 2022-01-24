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
struct TYPE_2__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct il_priv {int /*<<< orphan*/  irq_tasklet; TYPE_1__ watchdog; TYPE_1__ stats_periodic; int /*<<< orphan*/  txpower_work; int /*<<< orphan*/  alive_start; int /*<<< orphan*/  init_alive_start; int /*<<< orphan*/  run_time_calib_work; int /*<<< orphan*/  rx_replenish; int /*<<< orphan*/  restart; int /*<<< orphan*/  wait_command_queue; int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  il4965_bg_alive_start ; 
 int /*<<< orphan*/  il4965_bg_init_alive_start ; 
 int /*<<< orphan*/  il4965_bg_restart ; 
 int /*<<< orphan*/  il4965_bg_run_time_calib_work ; 
 int /*<<< orphan*/  il4965_bg_rx_replenish ; 
 int /*<<< orphan*/  il4965_bg_stats_periodic ; 
 int /*<<< orphan*/  il4965_bg_txpower_work ; 
 scalar_t__ il4965_irq_tasklet ; 
 int /*<<< orphan*/  il_bg_watchdog ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void (*) (unsigned long),unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct il_priv *il)
{
	il->workqueue = FUNC2(DRV_NAME);

	FUNC5(&il->wait_command_queue);

	FUNC1(&il->restart, il4965_bg_restart);
	FUNC1(&il->rx_replenish, il4965_bg_rx_replenish);
	FUNC1(&il->run_time_calib_work, il4965_bg_run_time_calib_work);
	FUNC0(&il->init_alive_start, il4965_bg_init_alive_start);
	FUNC0(&il->alive_start, il4965_bg_alive_start);

	FUNC3(il);

	FUNC1(&il->txpower_work, il4965_bg_txpower_work);

	FUNC4(&il->stats_periodic);
	il->stats_periodic.data = (unsigned long)il;
	il->stats_periodic.function = il4965_bg_stats_periodic;

	FUNC4(&il->watchdog);
	il->watchdog.data = (unsigned long)il;
	il->watchdog.function = il_bg_watchdog;

	FUNC6(&il->irq_tasklet,
		     (void (*)(unsigned long))il4965_irq_tasklet,
		     (unsigned long)il);
}