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
struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  tx_pause; } ;
struct TYPE_4__ {scalar_t__ fc_autoneg; } ;
struct be_adapter {TYPE_1__* pdev; int /*<<< orphan*/  rx_fc; int /*<<< orphan*/  tx_fc; TYPE_2__ phy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct be_adapter* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int
FUNC3(struct net_device *netdev, struct ethtool_pauseparam *ecmd)
{
	struct be_adapter *adapter = FUNC2(netdev);
	int status;

	if (ecmd->autoneg != adapter->phy.fc_autoneg)
		return -EINVAL;
	adapter->tx_fc = ecmd->tx_pause;
	adapter->rx_fc = ecmd->rx_pause;

	status = FUNC0(adapter,
					adapter->tx_fc, adapter->rx_fc);
	if (status)
		FUNC1(&adapter->pdev->dev, "Pause param set failed.\n");

	return status;
}