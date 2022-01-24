#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tg3 {int phy_flags; int phy_addr; int /*<<< orphan*/  lock; TYPE_1__* mdio_bus; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int /*<<< orphan*/  val_in; int /*<<< orphan*/  val_out; } ;
struct ifreq {int dummy; } ;
struct TYPE_2__ {struct phy_device** phy_map; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EOPNOTSUPP ; 
#define  SIOCGMIIPHY 131 
#define  SIOCGMIIREG 130 
#define  SIOCSHWTSTAMP 129 
#define  SIOCSMIIREG 128 
 int TG3_PHYFLG_IS_CONNECTED ; 
 int TG3_PHYFLG_PHY_SERDES ; 
 size_t TG3_PHY_MII_ADDR ; 
 int /*<<< orphan*/  USE_PHYLIB ; 
 int FUNC0 (struct tg3*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct tg3*,int,int,int /*<<< orphan*/ ) ; 
 struct mii_ioctl_data* FUNC2 (struct ifreq*) ; 
 struct tg3* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct phy_device*,struct mii_ioctl_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct tg3*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct net_device*,struct ifreq*,int) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct mii_ioctl_data *data = FUNC2(ifr);
	struct tg3 *tp = FUNC3(dev);
	int err;

	if (FUNC8(tp, USE_PHYLIB)) {
		struct phy_device *phydev;
		if (!(tp->phy_flags & TG3_PHYFLG_IS_CONNECTED))
			return -EAGAIN;
		phydev = tp->mdio_bus->phy_map[TG3_PHY_MII_ADDR];
		return FUNC5(phydev, data, cmd);
	}

	switch (cmd) {
	case SIOCGMIIPHY:
		data->phy_id = tp->phy_addr;

		/* fallthru */
	case SIOCGMIIREG: {
		u32 mii_regval;

		if (tp->phy_flags & TG3_PHYFLG_PHY_SERDES)
			break;			/* We have no PHY */

		if (!FUNC4(dev))
			return -EAGAIN;

		FUNC6(&tp->lock);
		err = FUNC0(tp, data->phy_id & 0x1f,
				    data->reg_num & 0x1f, &mii_regval);
		FUNC7(&tp->lock);

		data->val_out = mii_regval;

		return err;
	}

	case SIOCSMIIREG:
		if (tp->phy_flags & TG3_PHYFLG_PHY_SERDES)
			break;			/* We have no PHY */

		if (!FUNC4(dev))
			return -EAGAIN;

		FUNC6(&tp->lock);
		err = FUNC1(tp, data->phy_id & 0x1f,
				     data->reg_num & 0x1f, data->val_in);
		FUNC7(&tp->lock);

		return err;

	case SIOCSHWTSTAMP:
		return FUNC9(dev, ifr, cmd);

	default:
		/* do nothing */
		break;
	}
	return -EOPNOTSUPP;
}