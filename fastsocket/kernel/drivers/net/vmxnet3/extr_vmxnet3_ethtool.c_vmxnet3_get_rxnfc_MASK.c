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
struct vmxnet3_adapter {int /*<<< orphan*/  num_rx_queues; } ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  ETHTOOL_GRXRINGS 128 
 struct vmxnet3_adapter* FUNC0 (struct net_device*) ; 

__attribute__((used)) static int
FUNC1(struct net_device *netdev, struct ethtool_rxnfc *info,
		  void *rules)
{
	struct vmxnet3_adapter *adapter = FUNC0(netdev);
	switch (info->cmd) {
	case ETHTOOL_GRXRINGS:
		info->data = adapter->num_rx_queues;
		return 0;
	}
	return -EOPNOTSUPP;
}