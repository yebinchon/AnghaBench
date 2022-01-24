#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct ethtool_cmd {int advertising; scalar_t__ autoneg; scalar_t__ duplex; } ;
struct efx_nic {int /*<<< orphan*/  loopback_mode; struct efx_mcdi_phy_data* phy_data; } ;
struct efx_mcdi_phy_data {int forced_cap; } ;

/* Variables and functions */
 int ADVERTISED_Autoneg ; 
 int EINVAL ; 
 int MC_CMD_PHY_CAP_10000FDX_LBN ; 
 int MC_CMD_PHY_CAP_1000FDX_LBN ; 
 int MC_CMD_PHY_CAP_1000HDX_LBN ; 
 int MC_CMD_PHY_CAP_100FDX_LBN ; 
 int MC_CMD_PHY_CAP_100HDX_LBN ; 
 int MC_CMD_PHY_CAP_10FDX_LBN ; 
 int MC_CMD_PHY_CAP_10HDX_LBN ; 
 int MC_CMD_PHY_CAP_AN_LBN ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int) ; 
 int FUNC2 (struct efx_nic*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ethtool_cmd*) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct efx_nic *efx, struct ethtool_cmd *ecmd)
{
	struct efx_mcdi_phy_data *phy_cfg = efx->phy_data;
	u32 caps;
	int rc;

	if (ecmd->autoneg) {
		caps = (FUNC4(ecmd->advertising) |
			 1 << MC_CMD_PHY_CAP_AN_LBN);
	} else if (ecmd->duplex) {
		switch (FUNC3(ecmd)) {
		case 10:    caps = 1 << MC_CMD_PHY_CAP_10FDX_LBN;    break;
		case 100:   caps = 1 << MC_CMD_PHY_CAP_100FDX_LBN;   break;
		case 1000:  caps = 1 << MC_CMD_PHY_CAP_1000FDX_LBN;  break;
		case 10000: caps = 1 << MC_CMD_PHY_CAP_10000FDX_LBN; break;
		default:    return -EINVAL;
		}
	} else {
		switch (FUNC3(ecmd)) {
		case 10:    caps = 1 << MC_CMD_PHY_CAP_10HDX_LBN;    break;
		case 100:   caps = 1 << MC_CMD_PHY_CAP_100HDX_LBN;   break;
		case 1000:  caps = 1 << MC_CMD_PHY_CAP_1000HDX_LBN;  break;
		default:    return -EINVAL;
		}
	}

	rc = FUNC2(efx, caps, FUNC0(efx),
			       efx->loopback_mode, 0);
	if (rc)
		return rc;

	if (ecmd->autoneg) {
		FUNC1(
			efx, ecmd->advertising | ADVERTISED_Autoneg);
		phy_cfg->forced_cap = 0;
	} else {
		FUNC1(efx, 0);
		phy_cfg->forced_cap = caps;
	}
	return 0;
}