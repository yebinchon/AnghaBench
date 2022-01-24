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
struct ethtool_cmd {int advertising; scalar_t__ duplex; scalar_t__ port; scalar_t__ autoneg; int supported; int /*<<< orphan*/  cmd; } ;
struct efx_nic {TYPE_1__* phy_op; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_settings ) (struct efx_nic*,struct ethtool_cmd*) ;} ;

/* Variables and functions */
 int ADVERTISED_Autoneg ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETHTOOL_GSET ; 
 scalar_t__ PORT_TP ; 
 int SUPPORTED_Autoneg ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 scalar_t__ FUNC2 (struct ethtool_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,struct ethtool_cmd*) ; 

int FUNC4(struct efx_nic *efx, struct ethtool_cmd *ecmd)
{
	struct ethtool_cmd prev = { .cmd = ETHTOOL_GSET };

	efx->phy_op->get_settings(efx, &prev);

	if (ecmd->advertising == prev.advertising &&
	    FUNC2(ecmd) == FUNC2(&prev) &&
	    ecmd->duplex == prev.duplex &&
	    ecmd->port == prev.port &&
	    ecmd->autoneg == prev.autoneg)
		return 0;

	/* We can only change these settings for -T PHYs */
	if (prev.port != PORT_TP || ecmd->port != PORT_TP)
		return -EINVAL;

	/* Check that PHY supports these settings */
	if (!ecmd->autoneg ||
	    (ecmd->advertising | SUPPORTED_Autoneg) & ~prev.supported)
		return -EINVAL;

	FUNC0(efx, ecmd->advertising | ADVERTISED_Autoneg);
	FUNC1(efx);
	return 0;
}