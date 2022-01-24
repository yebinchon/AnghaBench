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
struct ethtool_cmd {int supported; int /*<<< orphan*/  duplex; } ;
struct efx_link_state {scalar_t__ fd; int /*<<< orphan*/  speed; } ;
struct efx_nic {int /*<<< orphan*/  mac_lock; TYPE_1__* phy_op; struct efx_link_state link_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_settings ) (struct efx_nic*,struct ethtool_cmd*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  DUPLEX_HALF ; 
 scalar_t__ FUNC0 (struct efx_nic*) ; 
 int SUPPORTED_1000baseT_Half ; 
 int SUPPORTED_Asym_Pause ; 
 int SUPPORTED_Pause ; 
 int /*<<< orphan*/  FUNC1 (struct ethtool_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct efx_nic* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,struct ethtool_cmd*) ; 

__attribute__((used)) static int FUNC6(struct net_device *net_dev,
				    struct ethtool_cmd *ecmd)
{
	struct efx_nic *efx = FUNC4(net_dev);
	struct efx_link_state *link_state = &efx->link_state;

	FUNC2(&efx->mac_lock);
	efx->phy_op->get_settings(efx, ecmd);
	FUNC3(&efx->mac_lock);

	/* GMAC does not support 1000Mbps HD */
	ecmd->supported &= ~SUPPORTED_1000baseT_Half;
	/* Both MACs support pause frames (bidirectional and respond-only) */
	ecmd->supported |= SUPPORTED_Pause | SUPPORTED_Asym_Pause;

	if (FUNC0(efx)) {
		FUNC1(ecmd, link_state->speed);
		ecmd->duplex = link_state->fd ? DUPLEX_FULL : DUPLEX_HALF;
	}

	return 0;
}