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
struct efx_nic {int port_enabled; int /*<<< orphan*/  mac_lock; TYPE_1__* type; int /*<<< orphan*/  net_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reconfigure_mac ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 

__attribute__((used)) static void FUNC5(struct efx_nic *efx)
{
	FUNC3(efx, ifup, efx->net_dev, "start port\n");
	FUNC0(efx->port_enabled);

	FUNC1(&efx->mac_lock);
	efx->port_enabled = true;

	/* efx_mac_work() might have been scheduled after efx_stop_port(),
	 * and then cancelled by efx_flush_all() */
	efx->type->reconfigure_mac(efx);

	FUNC2(&efx->mac_lock);
}