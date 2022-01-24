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
struct efx_nic {int phy_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_MMD_PCS ; 
 int /*<<< orphan*/  MDIO_MMD_PHYXS ; 
 int /*<<< orphan*/  MDIO_MMD_PMAPMD ; 
 int PHY_MODE_LOW_POWER ; 
 int /*<<< orphan*/  TXC_REQUIRED_DEVS ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct efx_nic *efx)
{
	/* According to the data book, all the MMDs can do low power */
	FUNC0(efx,
				 !!(efx->phy_mode & PHY_MODE_LOW_POWER),
				 TXC_REQUIRED_DEVS);

	/* Global register bank is in PCS, PHY XS. These control the host
	 * side and line side settings respectively. */
	FUNC2(efx, MDIO_MMD_PCS);
	FUNC2(efx, MDIO_MMD_PHYXS);

	/* Analog register bank in PMA/PMD, PHY XS */
	FUNC1(efx, MDIO_MMD_PMAPMD);
	FUNC1(efx, MDIO_MMD_PHYXS);
}