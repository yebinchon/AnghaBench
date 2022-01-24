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
struct efx_nic {int /*<<< orphan*/  net_dev; TYPE_1__* type; int /*<<< orphan*/  port_enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* stop_stats ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*) ; 

__attribute__((used)) static void FUNC9(struct efx_nic *efx)
{
	FUNC0(efx);

	/* port_enabled can be read safely under the rtnl lock */
	if (!efx->port_enabled)
		return;

	efx->type->stop_stats(efx);
	FUNC4(efx);

	/* Flush efx_mac_work(), refill_workqueue, monitor_work */
	FUNC2(efx);

	/* Stop the kernel transmit interface.  This is only valid if
	 * the device is stopped or detached; otherwise the watchdog
	 * may fire immediately.
	 */
	FUNC1(FUNC6(efx->net_dev) &&
		FUNC5(efx->net_dev));
	FUNC7(efx->net_dev);

	FUNC3(efx);
}