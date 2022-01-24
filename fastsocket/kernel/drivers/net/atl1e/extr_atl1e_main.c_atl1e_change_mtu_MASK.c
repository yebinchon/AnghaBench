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
struct TYPE_4__ {int max_frame_size; int rx_jumbo_th; } ;
struct atl1e_adapter {int /*<<< orphan*/  flags; TYPE_2__ hw; TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_FCS_LEN ; 
 int ETH_HLEN ; 
 int ETH_ZLEN ; 
 int MAX_JUMBO_FRAME_SIZE ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  __AT_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct atl1e_adapter* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev, int new_mtu)
{
	struct atl1e_adapter *adapter = FUNC5(netdev);
	int old_mtu   = netdev->mtu;
	int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;

	if ((max_frame < ETH_ZLEN + ETH_FCS_LEN) ||
			(max_frame > MAX_JUMBO_FRAME_SIZE)) {
		FUNC3(&adapter->pdev->dev, "invalid MTU setting\n");
		return -EINVAL;
	}
	/* set MTU */
	if (old_mtu != new_mtu && FUNC6(netdev)) {
		while (FUNC7(__AT_RESETTING, &adapter->flags))
			FUNC4(1);
		netdev->mtu = new_mtu;
		adapter->hw.max_frame_size = new_mtu;
		adapter->hw.rx_jumbo_th = (max_frame + 7) >> 3;
		FUNC0(adapter);
		FUNC1(adapter);
		FUNC2(__AT_RESETTING, &adapter->flags);
	}
	return 0;
}