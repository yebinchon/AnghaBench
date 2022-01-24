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
typedef  int /*<<< orphan*/  u32 ;
struct qlcnic_adapter {int flags; int rx_csum; TYPE_1__* pdev; } ;
struct net_device {int features; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int EOPNOTSUPP ; 
 int NETIF_F_LRO ; 
 int QLCNIC_ESWITCH_ENABLED ; 
 int /*<<< orphan*/  QLCNIC_LRO_DISABLED ; 
 int /*<<< orphan*/  QLCNIC_LRO_ENABLED ; 
 int QLCNIC_LRO_WAS_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct qlcnic_adapter* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, u32 data)
{
	struct qlcnic_adapter *adapter = FUNC1(dev);

	if ((adapter->flags & QLCNIC_ESWITCH_ENABLED &&
	    FUNC2(adapter)))
		return -EOPNOTSUPP;
	if (!!data) {
		adapter->rx_csum = !!data;
		if (adapter->flags & QLCNIC_LRO_WAS_ENABLED) {
			if (FUNC3(adapter, QLCNIC_LRO_ENABLED))
				return -EIO;
			dev->features |= NETIF_F_LRO;
			FUNC0(&adapter->pdev->dev,
				 "Enabling LRO as Rx checksum is on\n");
		}
		return 0;
	}

	if (dev->features & NETIF_F_LRO) {
		if (FUNC3(adapter, QLCNIC_LRO_DISABLED))
			return -EIO;

		dev->features &= ~NETIF_F_LRO;
		FUNC4(adapter);
		FUNC0(&adapter->pdev->dev,
			 "Disabling LRO as rx_csum is off\n");
		adapter->flags |= QLCNIC_LRO_WAS_ENABLED;
	}
	adapter->rx_csum = !!data;
	return 0;
}