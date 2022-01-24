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
struct qlcnic_adapter {TYPE_1__* netdev; } ;
struct net_device {int mtu; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int P3P_MAX_MTU ; 
 int P3P_MIN_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 struct qlcnic_adapter* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct qlcnic_adapter*,int) ; 

int FUNC3(struct net_device *netdev, int mtu)
{
	struct qlcnic_adapter *adapter = FUNC1(netdev);
	int rc = 0;

	if (mtu < P3P_MIN_MTU || mtu > P3P_MAX_MTU) {
		FUNC0(&adapter->netdev->dev, "%d bytes < mtu < %d bytes"
			" not supported\n", P3P_MAX_MTU, P3P_MIN_MTU);
		return -EINVAL;
	}

	rc = FUNC2(adapter, mtu);

	if (!rc)
		netdev->mtu = mtu;

	return rc;
}