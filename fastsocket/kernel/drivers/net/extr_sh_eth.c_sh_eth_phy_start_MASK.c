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
struct sh_eth_private {int /*<<< orphan*/  phydev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMCR_RESET ; 
 int /*<<< orphan*/  MII_BMCR ; 
 struct sh_eth_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev)
{
	struct sh_eth_private *mdp = FUNC0(ndev);
	int ret;

	ret = FUNC3(ndev);
	if (ret)
		return ret;

	/* reset phy - this also wakes it from PDOWN */
	FUNC2(mdp->phydev, MII_BMCR, BMCR_RESET);
	FUNC1(mdp->phydev);

	return 0;
}