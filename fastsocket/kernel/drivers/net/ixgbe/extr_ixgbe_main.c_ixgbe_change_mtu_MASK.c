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
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {TYPE_2__ mac; } ;
struct ixgbe_adapter {int flags; TYPE_1__ hw; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_FCS_LEN ; 
 int ETH_FRAME_LEN ; 
 int ETH_HLEN ; 
 int IXGBE_FLAG_SRIOV_ENABLED ; 
 int IXGBE_MAX_JUMBO_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ixgbe_mac_82599EB ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 struct ixgbe_adapter* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  probe ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, int new_mtu)
{
	struct ixgbe_adapter *adapter = FUNC3(netdev);
	int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN;

	/* MTU < 68 is an error and causes problems on some kernels */
	if ((new_mtu < 68) || (max_frame > IXGBE_MAX_JUMBO_FRAME_SIZE))
		return -EINVAL;

	/*
	 * For 82599EB we cannot allow legacy VFs to enable their receive
	 * paths when MTU greater than 1500 is configured.  So display a
	 * warning that legacy VFs will be disabled.
	 */
	if ((adapter->flags & IXGBE_FLAG_SRIOV_ENABLED) &&
	    (adapter->hw.mac.type == ixgbe_mac_82599EB) &&
	    (max_frame > (ETH_FRAME_LEN + ETH_FCS_LEN)))
		FUNC1(probe, "Setting MTU > 1500 will disable legacy VFs\n");

	FUNC0(probe, "changing MTU from %d to %d\n", netdev->mtu, new_mtu);

	/* must set new MTU before calling down or up */
	netdev->mtu = new_mtu;

	if (FUNC4(netdev))
		FUNC2(adapter);

	return 0;
}