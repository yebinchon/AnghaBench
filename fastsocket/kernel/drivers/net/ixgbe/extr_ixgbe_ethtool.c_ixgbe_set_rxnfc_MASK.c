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
struct ixgbe_adapter {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  ETHTOOL_SRXCLSRLDEL 130 
#define  ETHTOOL_SRXCLSRLINS 129 
#define  ETHTOOL_SRXFH 128 
 int FUNC0 (struct ixgbe_adapter*,struct ethtool_rxnfc*) ; 
 int FUNC1 (struct ixgbe_adapter*,struct ethtool_rxnfc*) ; 
 int FUNC2 (struct ixgbe_adapter*,struct ethtool_rxnfc*) ; 
 struct ixgbe_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ethtool_rxnfc *cmd)
{
	struct ixgbe_adapter *adapter = FUNC3(dev);
	int ret = -EOPNOTSUPP;

	switch (cmd->cmd) {
	case ETHTOOL_SRXCLSRLINS:
		ret = FUNC0(adapter, cmd);
		break;
	case ETHTOOL_SRXCLSRLDEL:
		ret = FUNC1(adapter, cmd);
		break;
	case ETHTOOL_SRXFH:
		ret = FUNC2(adapter, cmd);
		break;
	default:
		break;
	}

	return ret;
}