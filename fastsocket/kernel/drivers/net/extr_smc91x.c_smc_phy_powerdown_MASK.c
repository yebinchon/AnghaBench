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
struct TYPE_2__ {int phy_id; } ;
struct smc_local {scalar_t__ phy_type; int /*<<< orphan*/  phy_configure; TYPE_1__ mii; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned int BMCR_PDOWN ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct smc_local* FUNC1 (struct net_device*) ; 
 unsigned int FUNC2 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct smc_local *lp = FUNC1(dev);
	unsigned int bmcr;
	int phy = lp->mii.phy_id;

	if (lp->phy_type == 0)
		return;

	/* We need to ensure that no calls to smc_phy_configure are
	   pending.
	*/
	FUNC0(&lp->phy_configure);

	bmcr = FUNC2(dev, phy, MII_BMCR);
	FUNC3(dev, phy, MII_BMCR, bmcr | BMCR_PDOWN);
}