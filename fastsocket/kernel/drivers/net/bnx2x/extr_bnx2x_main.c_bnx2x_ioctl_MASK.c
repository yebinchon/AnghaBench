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
struct mii_ioctl_data {int /*<<< orphan*/  val_in; int /*<<< orphan*/  reg_num; int /*<<< orphan*/  phy_id; } ;
struct ifreq {int dummy; } ;
struct bnx2x {int /*<<< orphan*/  mdio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 struct mii_ioctl_data* FUNC1 (struct ifreq*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct mii_ioctl_data*,int) ; 
 struct bnx2x* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct bnx2x *bp = FUNC3(dev);
	struct mii_ioctl_data *mdio = FUNC1(ifr);

	FUNC0(NETIF_MSG_LINK, "ioctl: phy id 0x%x, reg 0x%x, val_in 0x%x\n",
	   mdio->phy_id, mdio->reg_num, mdio->val_in);

	if (!FUNC4(dev))
		return -EAGAIN;

	return FUNC2(&bp->mdio, mdio, cmd);
}