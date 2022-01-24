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
struct phy_device {int dummy; } ;
struct pasemi_mac {struct phy_device* phydev; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct pasemi_mac* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct phy_device*,struct ethtool_cmd*) ; 

__attribute__((used)) static int
FUNC2(struct net_device *netdev,
			       struct ethtool_cmd *cmd)
{
	struct pasemi_mac *mac = FUNC0(netdev);
	struct phy_device *phydev = mac->phydev;

	if (!phydev)
		return -EOPNOTSUPP;

	return FUNC1(phydev, cmd);
}