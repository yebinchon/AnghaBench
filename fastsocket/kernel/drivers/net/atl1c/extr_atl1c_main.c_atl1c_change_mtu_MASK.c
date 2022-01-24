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
struct net_device {int mtu; } ;
struct atl1c_hw {scalar_t__ nic_type; int max_frame_size; } ;
struct atl1c_adapter {int /*<<< orphan*/  flags; TYPE_2__* netdev; struct atl1c_hw hw; TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  features; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_DATA_LEN ; 
 int ETH_FCS_LEN ; 
 int ETH_HLEN ; 
 int ETH_ZLEN ; 
 int MAX_JUMBO_FRAME_SIZE ; 
 int MAX_TSO_FRAME_SIZE ; 
 int /*<<< orphan*/  NETIF_F_TSO ; 
 int /*<<< orphan*/  NETIF_F_TSO6 ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  __AT_RESETTING ; 
 scalar_t__ athr_l2c ; 
 scalar_t__ athr_l2c_b ; 
 scalar_t__ athr_l2c_b2 ; 
 int /*<<< orphan*/  FUNC0 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct atl1c_adapter* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct atl1c_adapter*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev, int new_mtu)
{
	struct atl1c_adapter *adapter = FUNC6(netdev);
	struct atl1c_hw *hw = &adapter->hw;
	int old_mtu   = netdev->mtu;
	int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;

	/* Fast Ethernet controller doesn't support jumbo packet */
	if (((hw->nic_type == athr_l2c ||
	      hw->nic_type == athr_l2c_b ||
	      hw->nic_type == athr_l2c_b2) && new_mtu > ETH_DATA_LEN) ||
	      max_frame < ETH_ZLEN + ETH_FCS_LEN ||
	      max_frame > MAX_JUMBO_FRAME_SIZE) {
		if (FUNC7(adapter))
			FUNC4(&adapter->pdev->dev, "invalid MTU setting\n");
		return -EINVAL;
	}
	/* set MTU */
	if (old_mtu != new_mtu && FUNC8(netdev)) {
		while (FUNC9(__AT_RESETTING, &adapter->flags))
			FUNC5(1);
		netdev->mtu = new_mtu;
		adapter->hw.max_frame_size = new_mtu;
		FUNC1(adapter, netdev);
		if (new_mtu > MAX_TSO_FRAME_SIZE) {
			adapter->netdev->features &= ~NETIF_F_TSO;
			adapter->netdev->features &= ~NETIF_F_TSO6;
		} else {
			adapter->netdev->features |= NETIF_F_TSO;
			adapter->netdev->features |= NETIF_F_TSO6;
		}
		FUNC0(adapter);
		FUNC2(adapter);
		FUNC3(__AT_RESETTING, &adapter->flags);
	}
	return 0;
}