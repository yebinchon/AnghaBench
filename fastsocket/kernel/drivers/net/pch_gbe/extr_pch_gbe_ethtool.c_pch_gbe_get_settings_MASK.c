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
struct pch_gbe_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  mii; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int supported; int advertising; } ;

/* Variables and functions */
 int ADVERTISED_1000baseT_Half ; 
 int ADVERTISED_TP ; 
 int SUPPORTED_1000baseT_Half ; 
 int SUPPORTED_TP ; 
 int /*<<< orphan*/  FUNC0 (struct ethtool_cmd*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ethtool_cmd*) ; 
 struct pch_gbe_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev,
				 struct ethtool_cmd *ecmd)
{
	struct pch_gbe_adapter *adapter = FUNC2(netdev);
	int ret;

	ret = FUNC1(&adapter->mii, ecmd);
	ecmd->supported &= ~(SUPPORTED_TP | SUPPORTED_1000baseT_Half);
	ecmd->advertising &= ~(ADVERTISED_TP | ADVERTISED_1000baseT_Half);

	if (!FUNC3(adapter->netdev))
		FUNC0(ecmd, -1);
	return ret;
}