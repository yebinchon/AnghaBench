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
struct ethtool_channels {int /*<<< orphan*/  max_combined; int /*<<< orphan*/  combined_count; } ;
struct be_adapter {int /*<<< orphan*/  num_evt_qs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 struct be_adapter* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *netdev,
			    struct ethtool_channels *ch)
{
	struct be_adapter *adapter = FUNC1(netdev);

	ch->combined_count = adapter->num_evt_qs;
	ch->max_combined = FUNC0(adapter);
}