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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct qlcnic_adapter {int flags; int /*<<< orphan*/  state; int /*<<< orphan*/  netdev; int /*<<< orphan*/  mac_addr; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int QLCNIC_MAC_OVERRIDE_DISABLED ; 
 int /*<<< orphan*/  __QLCNIC_DEV_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qlcnic_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct net_device *netdev, void *p)
{
	struct qlcnic_adapter *adapter = FUNC3(netdev);
	struct sockaddr *addr = p;

	if (FUNC10(adapter))
		return -EINVAL;

	if ((adapter->flags & QLCNIC_MAC_OVERRIDE_DISABLED))
		return -EOPNOTSUPP;

	if (!FUNC0(addr->sa_data))
		return -EINVAL;

	if (!FUNC1(adapter->mac_addr, addr->sa_data, ETH_ALEN))
		return 0;

	if (FUNC11(__QLCNIC_DEV_UP, &adapter->state)) {
		FUNC5(netdev);
		FUNC7(adapter);
	}

	FUNC6(adapter);
	FUNC2(adapter->mac_addr, addr->sa_data, netdev->addr_len);
	FUNC2(netdev->dev_addr, addr->sa_data, netdev->addr_len);
	FUNC9(adapter->netdev);

	if (FUNC11(__QLCNIC_DEV_UP, &adapter->state)) {
		FUNC4(netdev);
		FUNC8(adapter);
	}
	return 0;
}