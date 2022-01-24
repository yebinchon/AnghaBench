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
struct netdev_private {int phy_addr; } ;
struct net_device {int dummy; } ;
struct mii_data {int phy_id; int /*<<< orphan*/  val_in; int /*<<< orphan*/  reg_num; int /*<<< orphan*/  val_out; } ;
struct ifreq {int /*<<< orphan*/  ifr_ifru; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
#define  SIOCDEVPRIVATE 131 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct netdev_private* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int
FUNC4 (struct net_device *dev, struct ifreq *rq, int cmd)
{
	int phy_addr;
	struct netdev_private *np = FUNC3(dev);
	struct mii_data *miidata = (struct mii_data *) &rq->ifr_ifru;

	phy_addr = np->phy_addr;
	switch (cmd) {
	case SIOCDEVPRIVATE:
		break;
	case SIOCGMIIPHY:
		miidata->phy_id = phy_addr;
		break;
	case SIOCGMIIREG:
		miidata->val_out = FUNC1 (dev, phy_addr, miidata->reg_num);
		break;
	case SIOCSMIIREG:
		if (!FUNC0(CAP_NET_ADMIN))
			return -EPERM;
		FUNC2 (dev, phy_addr, miidata->reg_num, miidata->val_in);
		break;
	default:
		return -EOPNOTSUPP;
	}
	return 0;
}