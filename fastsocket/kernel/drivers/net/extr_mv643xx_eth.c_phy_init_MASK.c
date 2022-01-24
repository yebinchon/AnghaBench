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
struct phy_device {int speed; int duplex; int advertising; int supported; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  dev; } ;
struct mv643xx_eth_private {int /*<<< orphan*/  dev; struct phy_device* phy; } ;

/* Variables and functions */
 int ADVERTISED_Autoneg ; 
 int /*<<< orphan*/  AUTONEG_DISABLE ; 
 int /*<<< orphan*/  AUTONEG_ENABLE ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_GMII ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mv643xx_eth_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 

__attribute__((used)) static void FUNC4(struct mv643xx_eth_private *mp, int speed, int duplex)
{
	struct phy_device *phy = mp->phy;

	FUNC2(mp);

	FUNC1(mp->dev, FUNC0(&phy->dev), 0, PHY_INTERFACE_MODE_GMII);

	if (speed == 0) {
		phy->autoneg = AUTONEG_ENABLE;
		phy->speed = 0;
		phy->duplex = 0;
		phy->advertising = phy->supported | ADVERTISED_Autoneg;
	} else {
		phy->autoneg = AUTONEG_DISABLE;
		phy->advertising = 0;
		phy->speed = speed;
		phy->duplex = duplex;
	}
	FUNC3(phy);
}