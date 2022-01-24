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
struct efx_nic {scalar_t__ phy_type; int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_MMD_PHYXS ; 
 scalar_t__ PHY_TYPE_QT2025C ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*) ; 
 int FUNC7 (struct efx_nic*) ; 

__attribute__((used)) static int FUNC8(struct efx_nic *efx)
{
	u32 devid;
	int rc;

	rc = FUNC7(efx);
	if (rc) {
		FUNC4(efx, probe, efx->net_dev, "PHY init failed\n");
		return rc;
	}

	devid = FUNC3(efx, MDIO_MMD_PHYXS);
	FUNC5(efx, probe, efx->net_dev,
		   "PHY ID reg %x (OUI %06x model %02x revision %x)\n",
		   devid, FUNC1(devid), FUNC0(devid),
		   FUNC2(devid));

	if (efx->phy_type == PHY_TYPE_QT2025C)
		FUNC6(efx);

	return 0;
}