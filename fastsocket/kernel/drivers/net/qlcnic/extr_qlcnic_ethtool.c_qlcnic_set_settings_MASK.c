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
typedef  int u32 ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct net_device {TYPE_2__* netdev_ops; } ;
struct ethtool_cmd {int /*<<< orphan*/  autoneg; int /*<<< orphan*/  duplex; } ;
struct TYPE_4__ {int (* ndo_open ) (struct net_device*) ;int /*<<< orphan*/  (* ndo_stop ) (struct net_device*) ;} ;
struct TYPE_3__ {scalar_t__ port_type; int /*<<< orphan*/  link_autoneg; int /*<<< orphan*/  link_duplex; int /*<<< orphan*/  link_speed; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ QLCNIC_GBE ; 
 int /*<<< orphan*/  FUNC0 (struct ethtool_cmd*) ; 
 struct qlcnic_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (struct qlcnic_adapter*,struct ethtool_cmd*) ; 
 int FUNC5 (struct qlcnic_adapter*,struct ethtool_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, struct ethtool_cmd *ecmd)
{
	u32 ret = 0;
	struct qlcnic_adapter *adapter = FUNC1(dev);

	if (adapter->ahw->port_type != QLCNIC_GBE)
		return -EOPNOTSUPP;

	if (FUNC3(adapter))
		ret = FUNC4(adapter, ecmd);
	else
		ret = FUNC5(adapter, ecmd);

	if (!ret)
		return ret;

	adapter->ahw->link_speed = FUNC0(ecmd);
	adapter->ahw->link_duplex = ecmd->duplex;
	adapter->ahw->link_autoneg = ecmd->autoneg;

	if (!FUNC2(dev))
		return 0;

	dev->netdev_ops->ndo_stop(dev);
	return dev->netdev_ops->ndo_open(dev);
}