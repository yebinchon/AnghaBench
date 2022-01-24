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
struct ql_adapter {int link_config; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; } ;

/* Variables and functions */
 int CFG_PAUSE_STD ; 
 struct ql_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*) ; 

__attribute__((used)) static void FUNC2(struct net_device *netdev,
			struct ethtool_pauseparam *pause)
{
	struct ql_adapter *qdev = FUNC0(netdev);

	FUNC1(qdev);
	if (qdev->link_config & CFG_PAUSE_STD) {
		pause->rx_pause = 1;
		pause->tx_pause = 1;
	}
}