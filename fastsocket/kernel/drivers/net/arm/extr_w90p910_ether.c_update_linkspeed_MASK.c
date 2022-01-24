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
struct TYPE_2__ {int /*<<< orphan*/  phy_id; } ;
struct w90p910_ether {int linkflag; TYPE_1__ mii; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned int BMCR_ANENABLE ; 
 unsigned int BMCR_FULLDPLX ; 
 unsigned int BMCR_SPEED100 ; 
 unsigned int BMSR_ANEGCOMPLETE ; 
 unsigned int DUPLEX_FULL ; 
 unsigned int DUPLEX_HALF ; 
 unsigned int LPA_100FULL ; 
 unsigned int LPA_100HALF ; 
 unsigned int LPA_10FULL ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int /*<<< orphan*/  MII_LPA ; 
 unsigned int SPEED_10 ; 
 unsigned int SPEED_100 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct w90p910_ether* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,unsigned int,unsigned int) ; 
 unsigned int FUNC7 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	struct w90p910_ether *ether = FUNC3(dev);
	struct platform_device *pdev;
	unsigned int bmsr, bmcr, lpa, speed, duplex;

	pdev = ether->pdev;

	if (!FUNC2(&ether->mii)) {
		ether->linkflag = 0x0;
		FUNC4(dev);
		FUNC1(&pdev->dev, "%s: Link down.\n", dev->name);
		return;
	}

	if (ether->linkflag == 1)
		return;

	bmsr = FUNC7(dev, ether->mii.phy_id, MII_BMSR);
	bmcr = FUNC7(dev, ether->mii.phy_id, MII_BMCR);

	if (bmcr & BMCR_ANENABLE) {
		if (!(bmsr & BMSR_ANEGCOMPLETE))
			return;

		lpa = FUNC7(dev, ether->mii.phy_id, MII_LPA);

		if ((lpa & LPA_100FULL) || (lpa & LPA_100HALF))
			speed = SPEED_100;
		else
			speed = SPEED_10;

		if ((lpa & LPA_100FULL) || (lpa & LPA_10FULL))
			duplex = DUPLEX_FULL;
		else
			duplex = DUPLEX_HALF;

	} else {
		speed = (bmcr & BMCR_SPEED100) ? SPEED_100 : SPEED_10;
		duplex = (bmcr & BMCR_FULLDPLX) ? DUPLEX_FULL : DUPLEX_HALF;
	}

	FUNC6(dev, speed, duplex);

	FUNC0(&pdev->dev, "%s: Link now %i-%s\n", dev->name, speed,
			(duplex == DUPLEX_FULL) ? "FullDuplex" : "HalfDuplex");
	ether->linkflag = 0x01;

	FUNC5(dev);
}