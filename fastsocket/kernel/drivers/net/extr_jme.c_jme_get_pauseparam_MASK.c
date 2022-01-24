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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_id; } ;
struct jme_adapter {int reg_txpfc; int reg_rxmcs; int /*<<< orphan*/  phy_lock; TYPE_1__ mii_if; int /*<<< orphan*/  dev; } ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; int autoneg; } ;

/* Variables and functions */
 int ADVERTISE_PAUSE_ASYM ; 
 int ADVERTISE_PAUSE_CAP ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int RXMCS_FLOWCTRL ; 
 int TXPFC_PF_EN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct jme_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct net_device *netdev,
			struct ethtool_pauseparam *ecmd)
{
	struct jme_adapter *jme = FUNC1(netdev);
	u32 val;

	ecmd->tx_pause = (jme->reg_txpfc & TXPFC_PF_EN) != 0;
	ecmd->rx_pause = (jme->reg_rxmcs & RXMCS_FLOWCTRL) != 0;

	FUNC2(&jme->phy_lock);
	val = FUNC0(jme->dev, jme->mii_if.phy_id, MII_ADVERTISE);
	FUNC3(&jme->phy_lock);

	ecmd->autoneg =
		(val & (ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM)) != 0;
}