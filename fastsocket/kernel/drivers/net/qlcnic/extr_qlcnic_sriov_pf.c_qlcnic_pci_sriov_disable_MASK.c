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
struct qlcnic_adapter {struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC6(struct qlcnic_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;

	if (FUNC2(netdev))
		FUNC0(adapter, netdev);

	FUNC5(adapter);

	FUNC4(adapter);

	/* After disabling SRIOV re-init the driver in default mode
	   configure opmode based on op_mode of function
	 */
	if (FUNC3(adapter))
		return -EIO;

	if (FUNC2(netdev))
		FUNC1(adapter, netdev);

	return 0;
}