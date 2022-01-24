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
struct net_device {int dummy; } ;
struct ethtool_cmd {scalar_t__ duplex; } ;
struct efx_nic {int /*<<< orphan*/  mac_lock; TYPE_1__* phy_op; int /*<<< orphan*/  net_dev; } ;
struct TYPE_2__ {int (* set_settings ) (struct efx_nic*,struct ethtool_cmd*) ;} ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 int EINVAL ; 
 scalar_t__ SPEED_1000 ; 
 int /*<<< orphan*/  drv ; 
 scalar_t__ FUNC0 (struct ethtool_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct efx_nic* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct efx_nic*,struct ethtool_cmd*) ; 

__attribute__((used)) static int FUNC6(struct net_device *net_dev,
				    struct ethtool_cmd *ecmd)
{
	struct efx_nic *efx = FUNC3(net_dev);
	int rc;

	/* GMAC does not support 1000Mbps HD */
	if ((FUNC0(ecmd) == SPEED_1000) &&
	    (ecmd->duplex != DUPLEX_FULL)) {
		FUNC4(efx, drv, efx->net_dev,
			  "rejecting unsupported 1000Mbps HD setting\n");
		return -EINVAL;
	}

	FUNC1(&efx->mac_lock);
	rc = efx->phy_op->set_settings(efx, ecmd);
	FUNC2(&efx->mac_lock);
	return rc;
}