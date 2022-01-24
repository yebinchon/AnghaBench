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
struct net_device {int dummy; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; } ;
struct e1000_adapter {int itr_setting; int itr; } ;

/* Variables and functions */
 int E1000_MAX_ITR_USECS ; 
 int E1000_MIN_ITR_USECS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*,int) ; 
 struct e1000_adapter* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev,
			      struct ethtool_coalesce *ec)
{
	struct e1000_adapter *adapter = FUNC1(netdev);

	if ((ec->rx_coalesce_usecs > E1000_MAX_ITR_USECS) ||
	    ((ec->rx_coalesce_usecs > 4) &&
	     (ec->rx_coalesce_usecs < E1000_MIN_ITR_USECS)) ||
	    (ec->rx_coalesce_usecs == 2))
		return -EINVAL;

	if (ec->rx_coalesce_usecs == 4) {
		adapter->itr_setting = 4;
		adapter->itr = adapter->itr_setting;
	} else if (ec->rx_coalesce_usecs <= 3) {
		adapter->itr = 20000;
		adapter->itr_setting = ec->rx_coalesce_usecs;
	} else {
		adapter->itr = (1000000 / ec->rx_coalesce_usecs);
		adapter->itr_setting = adapter->itr & ~3;
	}

	if (adapter->itr_setting != 0)
		FUNC0(adapter, adapter->itr);
	else
		FUNC0(adapter, 0);

	return 0;
}