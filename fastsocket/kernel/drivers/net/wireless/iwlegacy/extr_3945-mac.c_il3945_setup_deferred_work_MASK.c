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
struct TYPE_4__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct TYPE_3__ {int /*<<< orphan*/  rfkill_poll; } ;
struct il_priv {int /*<<< orphan*/  irq_tasklet; TYPE_2__ watchdog; TYPE_1__ _3945; int /*<<< orphan*/  alive_start; int /*<<< orphan*/  init_alive_start; int /*<<< orphan*/  rx_replenish; int /*<<< orphan*/  restart; int /*<<< orphan*/  wait_command_queue; int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  il3945_bg_alive_start ; 
 int /*<<< orphan*/  il3945_bg_init_alive_start ; 
 int /*<<< orphan*/  il3945_bg_restart ; 
 int /*<<< orphan*/  il3945_bg_rx_replenish ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*) ; 
 scalar_t__ il3945_irq_tasklet ; 
 int /*<<< orphan*/  il3945_rfkill_poll ; 
 int /*<<< orphan*/  il_bg_watchdog ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void (*) (unsigned long),unsigned long) ; 

__attribute__((used)) static void
FUNC8(struct il_priv *il)
{
	il->workqueue = FUNC2(DRV_NAME);

	FUNC6(&il->wait_command_queue);

	FUNC1(&il->restart, il3945_bg_restart);
	FUNC1(&il->rx_replenish, il3945_bg_rx_replenish);
	FUNC0(&il->init_alive_start, il3945_bg_init_alive_start);
	FUNC0(&il->alive_start, il3945_bg_alive_start);
	FUNC0(&il->_3945.rfkill_poll, il3945_rfkill_poll);

	FUNC4(il);

	FUNC3(il);

	FUNC5(&il->watchdog);
	il->watchdog.data = (unsigned long)il;
	il->watchdog.function = il_bg_watchdog;

	FUNC7(&il->irq_tasklet,
		     (void (*)(unsigned long))il3945_irq_tasklet,
		     (unsigned long)il);
}