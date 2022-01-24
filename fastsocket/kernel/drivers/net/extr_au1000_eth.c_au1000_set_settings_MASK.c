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
struct ethtool_cmd {int dummy; } ;
struct au1000_private {scalar_t__ phy_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct au1000_private* FUNC1 (struct net_device*) ; 
 int FUNC2 (scalar_t__,struct ethtool_cmd*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct ethtool_cmd *cmd)
{
	struct au1000_private *aup = FUNC1(dev);

	if (!FUNC0(CAP_NET_ADMIN))
		return -EPERM;

	if (aup->phy_dev)
		return FUNC2(aup->phy_dev, cmd);

	return -EINVAL;
}