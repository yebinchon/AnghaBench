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
struct be_adapter {int num_rx_qs; int num_tx_qs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETHTOOL_RXSTATS_NUM ; 
 int ETHTOOL_STATS_NUM ; 
 int ETHTOOL_TESTS_NUM ; 
 int ETHTOOL_TXSTATS_NUM ; 
#define  ETH_SS_STATS 129 
#define  ETH_SS_TEST 128 
 struct be_adapter* FUNC0 (struct net_device*) ; 

__attribute__((used)) static int FUNC1(struct net_device *netdev, int stringset)
{
	struct be_adapter *adapter = FUNC0(netdev);

	switch (stringset) {
	case ETH_SS_TEST:
		return ETHTOOL_TESTS_NUM;
	case ETH_SS_STATS:
		return ETHTOOL_STATS_NUM +
			adapter->num_rx_qs * ETHTOOL_RXSTATS_NUM +
			adapter->num_tx_qs * ETHTOOL_TXSTATS_NUM;
	default:
		return -EINVAL;
	}
}