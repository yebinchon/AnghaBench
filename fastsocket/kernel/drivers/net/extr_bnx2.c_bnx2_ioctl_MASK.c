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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int reg_num; int /*<<< orphan*/  val_in; int /*<<< orphan*/  val_out; int /*<<< orphan*/  phy_id; } ;
struct ifreq {int dummy; } ;
struct bnx2 {int phy_flags; int /*<<< orphan*/  phy_lock; int /*<<< orphan*/  phy_addr; } ;

/* Variables and functions */
 int BNX2_PHY_FLAG_REMOTE_PHY_CAP ; 
 int EAGAIN ; 
 int EOPNOTSUPP ; 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 int FUNC0 (struct bnx2*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct bnx2*,int,int /*<<< orphan*/ ) ; 
 struct mii_ioctl_data* FUNC2 (struct ifreq*) ; 
 struct bnx2* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct mii_ioctl_data *data = FUNC2(ifr);
	struct bnx2 *bp = FUNC3(dev);
	int err;

	switch(cmd) {
	case SIOCGMIIPHY:
		data->phy_id = bp->phy_addr;

		/* fallthru */
	case SIOCGMIIREG: {
		u32 mii_regval;

		if (bp->phy_flags & BNX2_PHY_FLAG_REMOTE_PHY_CAP)
			return -EOPNOTSUPP;

		if (!FUNC4(dev))
			return -EAGAIN;

		FUNC5(&bp->phy_lock);
		err = FUNC0(bp, data->reg_num & 0x1f, &mii_regval);
		FUNC6(&bp->phy_lock);

		data->val_out = mii_regval;

		return err;
	}

	case SIOCSMIIREG:
		if (bp->phy_flags & BNX2_PHY_FLAG_REMOTE_PHY_CAP)
			return -EOPNOTSUPP;

		if (!FUNC4(dev))
			return -EAGAIN;

		FUNC5(&bp->phy_lock);
		err = FUNC1(bp, data->reg_num & 0x1f, data->val_in);
		FUNC6(&bp->phy_lock);

		return err;

	default:
		/* do nothing */
		break;
	}
	return -EOPNOTSUPP;
}