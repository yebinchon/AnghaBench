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
struct stmmac_priv {int /*<<< orphan*/  lock; struct phy_device* phydev; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;

/* Variables and functions */
 struct stmmac_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct phy_device*,struct ethtool_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct net_device *dev, struct ethtool_cmd *cmd)
{
	struct stmmac_priv *priv = FUNC0(dev);
	struct phy_device *phy = priv->phydev;
	int rc;

	FUNC2(&priv->lock);
	rc = FUNC1(phy, cmd);
	FUNC3(&priv->lock);

	return rc;
}