#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stmmac_priv {int flow_ctrl; int /*<<< orphan*/  lock; int /*<<< orphan*/  pause; TYPE_2__* mac_type; struct phy_device* phydev; } ;
struct phy_device {int /*<<< orphan*/  duplex; int /*<<< orphan*/  addr; int /*<<< orphan*/  speed; scalar_t__ autoneg; int /*<<< orphan*/  advertising; int /*<<< orphan*/  supported; } ;
struct net_device {unsigned long base_addr; } ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; } ;
struct ethtool_cmd {int /*<<< orphan*/  phy_address; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; scalar_t__ autoneg; int /*<<< orphan*/  advertising; int /*<<< orphan*/  supported; int /*<<< orphan*/  cmd; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* flow_ctrl ) (unsigned long,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ETHTOOL_NWAY_RST ; 
 int FLOW_OFF ; 
 int FLOW_RX ; 
 int FLOW_TX ; 
 struct stmmac_priv* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int FUNC2 (struct phy_device*,struct ethtool_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct net_device *netdev,
		      struct ethtool_pauseparam *pause)
{
	struct stmmac_priv *priv = FUNC0(netdev);
	struct phy_device *phy = priv->phydev;
	int new_pause = FLOW_OFF;
	int ret = 0;

	FUNC3(&priv->lock);

	if (pause->rx_pause)
		new_pause |= FLOW_RX;
	if (pause->tx_pause)
		new_pause |= FLOW_TX;

	priv->flow_ctrl = new_pause;

	if (phy->autoneg) {
		if (FUNC1(netdev)) {
			struct ethtool_cmd cmd;
			/* auto-negotiation automatically restarted */
			cmd.cmd = ETHTOOL_NWAY_RST;
			cmd.supported = phy->supported;
			cmd.advertising = phy->advertising;
			cmd.autoneg = phy->autoneg;
			cmd.speed = phy->speed;
			cmd.duplex = phy->duplex;
			cmd.phy_address = phy->addr;
			ret = FUNC2(phy, &cmd);
		}
	} else {
		unsigned long ioaddr = netdev->base_addr;
		priv->mac_type->ops->flow_ctrl(ioaddr, phy->duplex,
					       priv->flow_ctrl, priv->pause);
	}
	FUNC4(&priv->lock);
	return ret;
}