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
typedef  int /*<<< orphan*/  u32 ;
struct ethtool_cmd {int dummy; } ;
struct efx_nic {int /*<<< orphan*/  mdio; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADVERTISED_10000baseT_Full ; 
 scalar_t__ FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  MDIO_AN_10GBT_CTRL ; 
 int MDIO_AN_10GBT_CTRL_ADV10G ; 
 int /*<<< orphan*/  MDIO_AN_10GBT_STAT ; 
 int MDIO_AN_10GBT_STAT_LP10G ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int /*<<< orphan*/  SPEED_10000 ; 
 int FUNC1 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ethtool_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ethtool_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct efx_nic *efx, struct ethtool_cmd *ecmd)
{
	u32 adv = 0, lpa = 0;
	int reg;

	reg = FUNC1(efx, MDIO_MMD_AN, MDIO_AN_10GBT_CTRL);
	if (reg & MDIO_AN_10GBT_CTRL_ADV10G)
		adv |= ADVERTISED_10000baseT_Full;
	reg = FUNC1(efx, MDIO_MMD_AN, MDIO_AN_10GBT_STAT);
	if (reg & MDIO_AN_10GBT_STAT_LP10G)
		lpa |= ADVERTISED_10000baseT_Full;

	FUNC3(&efx->mdio, ecmd, adv, lpa);

	/* In loopback, the PHY automatically brings up the correct interface,
	 * but doesn't advertise the correct speed. So override it */
	if (FUNC0(efx))
		FUNC2(ecmd, SPEED_10000);
}