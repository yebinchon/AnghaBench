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
struct efx_nic {int phy_mode; TYPE_1__* type; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  mac_lock; } ;
typedef  enum efx_phy_mode { ____Placeholder_efx_phy_mode } efx_phy_mode ;
struct TYPE_2__ {int (* reconfigure_port ) (struct efx_nic*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct efx_nic*) ; 
 int PHY_MODE_TX_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct efx_nic*) ; 

int FUNC6(struct efx_nic *efx)
{
	enum efx_phy_mode phy_mode;
	int rc;

	FUNC1(!FUNC2(&efx->mac_lock));

	/* Serialise the promiscuous flag with efx_set_multicast_list. */
	FUNC3(efx->net_dev);
	FUNC4(efx->net_dev);

	/* Disable PHY transmit in mac level loopbacks */
	phy_mode = efx->phy_mode;
	if (FUNC0(efx))
		efx->phy_mode |= PHY_MODE_TX_DISABLED;
	else
		efx->phy_mode &= ~PHY_MODE_TX_DISABLED;

	rc = efx->type->reconfigure_port(efx);

	if (rc)
		efx->phy_mode = phy_mode;

	return rc;
}