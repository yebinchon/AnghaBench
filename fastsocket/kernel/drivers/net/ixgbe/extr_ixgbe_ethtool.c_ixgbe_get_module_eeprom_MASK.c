#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ (* read_i2c_eeprom ) (struct ixgbe_hw*,int,int*) ;scalar_t__ (* read_i2c_sff8472 ) (struct ixgbe_hw*,int,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
struct ixgbe_adapter {int /*<<< orphan*/  state; struct ixgbe_hw hw; } ;
struct ethtool_eeprom {int len; int offset; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ETH_MODULE_SFF_8079_LEN ; 
 scalar_t__ IXGBE_ERR_PHY_ADDR_INVALID ; 
 int /*<<< orphan*/  __IXGBE_IN_SFP_INIT ; 
 struct ixgbe_adapter* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*,int,int*) ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*,int,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
					 struct ethtool_eeprom *ee,
					 u8 *data)
{
	struct ixgbe_adapter *adapter = FUNC0(dev);
	struct ixgbe_hw *hw = &adapter->hw;
	u32 status = IXGBE_ERR_PHY_ADDR_INVALID;
	u8 databyte = 0xFF;
	int i = 0;
	int ret_val = 0;

	if (ee->len == 0)
		return -EINVAL;

	for (i = ee->offset; i < ee->len; i++) {
		/* I2C reads can take long time */
		if (FUNC3(__IXGBE_IN_SFP_INIT, &adapter->state))
			return -EBUSY;

		if (i < ETH_MODULE_SFF_8079_LEN)
			status  = hw->phy.ops.read_i2c_eeprom(hw, i, &databyte);
		else
			status = hw->phy.ops.read_i2c_sff8472(hw, i, &databyte);

		if (status != 0)
			ret_val = -EIO;

		data[i - ee->offset] = databyte;
	}

	return ret_val;
}