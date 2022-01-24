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
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;
struct emac_priv {int /*<<< orphan*/  phydev; scalar_t__ phy_mask; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct emac_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ethtool_cmd*) ; 

__attribute__((used)) static int FUNC2(struct net_device *ndev, struct ethtool_cmd *ecmd)
{
	struct emac_priv *priv = FUNC0(ndev);
	if (priv->phy_mask)
		return FUNC1(priv->phydev, ecmd);
	else
		return -EOPNOTSUPP;

}