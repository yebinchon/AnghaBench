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
struct net_device {int dummy; } ;
struct ixgbe_mac_info {int /*<<< orphan*/  san_addr; } ;
struct TYPE_2__ {struct ixgbe_mac_info mac; } ;
struct ixgbe_adapter {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_HW_ADDR_T_SAN ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct ixgbe_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	int err = 0;
	struct ixgbe_adapter *adapter = FUNC2(dev);
	struct ixgbe_mac_info *mac = &adapter->hw.mac;

	if (FUNC1(mac->san_addr)) {
		FUNC3();
		err = FUNC0(dev, mac->san_addr, NETDEV_HW_ADDR_T_SAN);
		FUNC4();
	}
	return err;
}