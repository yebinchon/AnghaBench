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
struct phy_device {int /*<<< orphan*/  addr; int /*<<< orphan*/  bus; } ;
struct ethtool_eee {void* lp_advertised; void* advertised; int /*<<< orphan*/  supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_AN_EEE_ADV ; 
 int /*<<< orphan*/  MDIO_AN_EEE_LPABLE ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int /*<<< orphan*/  MDIO_MMD_PCS ; 
 int /*<<< orphan*/  MDIO_PCS_EEE_ABLE ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct phy_device *phydev, struct ethtool_eee *data)
{
	int val;

	/* Get Supported EEE */
	val = FUNC2(phydev->bus, MDIO_PCS_EEE_ABLE,
				    MDIO_MMD_PCS, phydev->addr);
	if (val < 0)
		return val;
	data->supported = FUNC1(val);

	/* Get advertisement EEE */
	val = FUNC2(phydev->bus, MDIO_AN_EEE_ADV,
				    MDIO_MMD_AN, phydev->addr);
	if (val < 0)
		return val;
	data->advertised = FUNC0(val);

	/* Get LP advertisement EEE */
	val = FUNC2(phydev->bus, MDIO_AN_EEE_LPABLE,
				    MDIO_MMD_AN, phydev->addr);
	if (val < 0)
		return val;
	data->lp_advertised = FUNC0(val);

	return 0;
}