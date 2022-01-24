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
typedef  int u32 ;
struct netxen_adapter {int capabilities; int /*<<< orphan*/  rx_csum; } ;
struct net_device {int features; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ETH_FLAG_LRO ; 
 int NETIF_F_LRO ; 
 int NETXEN_NIC_LRO_DISABLED ; 
 int NETXEN_NIC_LRO_ENABLED ; 
 int NX_FW_CAPABILITY_HW_LRO ; 
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct netxen_adapter* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct netxen_adapter*,int) ; 
 scalar_t__ FUNC4 (struct netxen_adapter*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, u32 data)
{
	struct netxen_adapter *adapter = FUNC2(netdev);
	int hw_lro;

	if ((FUNC0(netdev) & ~ETH_FLAG_LRO) !=
	    (data & ~ETH_FLAG_LRO))
		return -EINVAL;

	if (!(adapter->capabilities & NX_FW_CAPABILITY_HW_LRO))
		return -EINVAL;

	if (!adapter->rx_csum) {
		FUNC1(netdev, "rx csum is off, cannot toggle LRO\n");
		return -EINVAL;
	}

	if (!!(data & ETH_FLAG_LRO) == !!(netdev->features & NETIF_F_LRO))
		return 0;

	if (data & ETH_FLAG_LRO) {
		hw_lro = NETXEN_NIC_LRO_ENABLED;
		netdev->features |= NETIF_F_LRO;
	} else {
		hw_lro = NETXEN_NIC_LRO_DISABLED;
		netdev->features &= ~NETIF_F_LRO;
	}

	if (FUNC3(adapter, hw_lro))
		return -EIO;

	if ((hw_lro == 0) && FUNC4(adapter))
		return -EIO;


	return 0;
}