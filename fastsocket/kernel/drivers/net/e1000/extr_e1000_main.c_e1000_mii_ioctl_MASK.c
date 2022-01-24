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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int reg_num; int val_in; int /*<<< orphan*/  val_out; int /*<<< orphan*/  phy_id; } ;
struct ifreq {int dummy; } ;
struct e1000_hw {scalar_t__ media_type; int autoneg; int autoneg_advertised; int /*<<< orphan*/  phy_addr; } ;
struct e1000_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  stats_lock; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  DUPLEX_HALF ; 
 int E1000_SUCCESS ; 
 int EFAULT ; 
 int EIO ; 
 int EOPNOTSUPP ; 
#define  M88E1000_EXT_PHY_SPEC_CTRL 133 
#define  M88E1000_PHY_SPEC_CTRL 132 
 int MII_CR_AUTO_NEG_EN ; 
 int MII_CR_POWER_DOWN ; 
#define  PHY_CTRL 131 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 int /*<<< orphan*/  SPEED_10 ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  SPEED_1000 ; 
 scalar_t__ e1000_media_type_copper ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*) ; 
 int FUNC4 (struct e1000_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*,int,int) ; 
 struct mii_ioctl_data* FUNC6 (struct ifreq*) ; 
 struct e1000_adapter* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct net_device *netdev, struct ifreq *ifr,
			   int cmd)
{
	struct e1000_adapter *adapter = FUNC7(netdev);
	struct e1000_hw *hw = &adapter->hw;
	struct mii_ioctl_data *data = FUNC6(ifr);
	int retval;
	u16 mii_reg;
	unsigned long flags;

	if (hw->media_type != e1000_media_type_copper)
		return -EOPNOTSUPP;

	switch (cmd) {
	case SIOCGMIIPHY:
		data->phy_id = hw->phy_addr;
		break;
	case SIOCGMIIREG:
		FUNC9(&adapter->stats_lock, flags);
		if (FUNC1(hw, data->reg_num & 0x1F,
				   &data->val_out)) {
			FUNC10(&adapter->stats_lock, flags);
			return -EIO;
		}
		FUNC10(&adapter->stats_lock, flags);
		break;
	case SIOCSMIIREG:
		if (data->reg_num & ~(0x1F))
			return -EFAULT;
		mii_reg = data->val_in;
		FUNC9(&adapter->stats_lock, flags);
		if (FUNC5(hw, data->reg_num,
					mii_reg)) {
			FUNC10(&adapter->stats_lock, flags);
			return -EIO;
		}
		FUNC10(&adapter->stats_lock, flags);
		if (hw->media_type == e1000_media_type_copper) {
			switch (data->reg_num) {
			case PHY_CTRL:
				if (mii_reg & MII_CR_POWER_DOWN)
					break;
				if (mii_reg & MII_CR_AUTO_NEG_EN) {
					hw->autoneg = 1;
					hw->autoneg_advertised = 0x2F;
				} else {
					u32 speed;
					if (mii_reg & 0x40)
						speed = SPEED_1000;
					else if (mii_reg & 0x2000)
						speed = SPEED_100;
					else
						speed = SPEED_10;
					retval = FUNC4(
						adapter, speed,
						((mii_reg & 0x100)
						 ? DUPLEX_FULL :
						 DUPLEX_HALF));
					if (retval)
						return retval;
				}
				if (FUNC8(adapter->netdev))
					FUNC2(adapter);
				else
					FUNC3(adapter);
				break;
			case M88E1000_PHY_SPEC_CTRL:
			case M88E1000_EXT_PHY_SPEC_CTRL:
				if (FUNC0(hw))
					return -EIO;
				break;
			}
		} else {
			switch (data->reg_num) {
			case PHY_CTRL:
				if (mii_reg & MII_CR_POWER_DOWN)
					break;
				if (FUNC8(adapter->netdev))
					FUNC2(adapter);
				else
					FUNC3(adapter);
				break;
			}
		}
		break;
	default:
		return -EOPNOTSUPP;
	}
	return E1000_SUCCESS;
}