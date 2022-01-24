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
struct stmmac_priv {int flow_ctrl; int /*<<< orphan*/  lock; TYPE_1__* phydev; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; int /*<<< orphan*/  autoneg; } ;
struct TYPE_2__ {int /*<<< orphan*/  autoneg; } ;

/* Variables and functions */
 int FLOW_RX ; 
 int FLOW_TX ; 
 struct stmmac_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct net_device *netdev,
		      struct ethtool_pauseparam *pause)
{
	struct stmmac_priv *priv = FUNC0(netdev);

	FUNC1(&priv->lock);

	pause->rx_pause = 0;
	pause->tx_pause = 0;
	pause->autoneg = priv->phydev->autoneg;

	if (priv->flow_ctrl & FLOW_RX)
		pause->rx_pause = 1;
	if (priv->flow_ctrl & FLOW_TX)
		pause->tx_pause = 1;

	FUNC2(&priv->lock);
	return;
}