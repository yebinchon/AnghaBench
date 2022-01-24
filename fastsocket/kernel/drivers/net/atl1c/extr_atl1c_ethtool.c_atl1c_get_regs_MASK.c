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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
struct atl1c_hw {int dummy; } ;
struct atl1c_adapter {struct atl1c_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atl1c_hw*,scalar_t__,int /*<<< orphan*/ ) ; 
 int AT_REGS_LEN ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_BMSR ; 
 scalar_t__ REG_GPHY_CTRL ; 
 scalar_t__ REG_IDLE_STATUS ; 
 scalar_t__ REG_IRQ_MODRT_TIMER_INIT ; 
 scalar_t__ REG_LINK_CTRL ; 
 scalar_t__ REG_MAC_CTRL ; 
 scalar_t__ REG_MAC_HALF_DUPLX_CTRL ; 
 scalar_t__ REG_MAC_IPG_IFG ; 
 scalar_t__ REG_MAC_STA_ADDR ; 
 scalar_t__ REG_MANUAL_TIMER_INIT ; 
 scalar_t__ REG_MASTER_CTRL ; 
 scalar_t__ REG_MDIO_CTRL ; 
 scalar_t__ REG_MTU ; 
 scalar_t__ REG_PCIE_DEV_MISC_CTRL ; 
 scalar_t__ REG_PM_CTRL ; 
 scalar_t__ REG_RXQ_CTRL ; 
 scalar_t__ REG_RX_HASH_TABLE ; 
 scalar_t__ REG_SERDES ; 
 scalar_t__ REG_TWSI_CTRL ; 
 scalar_t__ REG_TXQ_CTRL ; 
 scalar_t__ REG_WOL_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_hw*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 struct atl1c_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev,
			   struct ethtool_regs *regs, void *p)
{
	struct atl1c_adapter *adapter = FUNC3(netdev);
	struct atl1c_hw *hw = &adapter->hw;
	u32 *regs_buff = p;
	u16 phy_data;

	FUNC2(p, 0, AT_REGS_LEN);

	regs->version = 1;
	FUNC0(hw, REG_PM_CTRL, 		  p++);
	FUNC0(hw, REG_MAC_HALF_DUPLX_CTRL,  p++);
	FUNC0(hw, REG_TWSI_CTRL, 		  p++);
	FUNC0(hw, REG_PCIE_DEV_MISC_CTRL,   p++);
	FUNC0(hw, REG_MASTER_CTRL, 	  p++);
	FUNC0(hw, REG_MANUAL_TIMER_INIT,    p++);
	FUNC0(hw, REG_IRQ_MODRT_TIMER_INIT, p++);
	FUNC0(hw, REG_GPHY_CTRL, 		  p++);
	FUNC0(hw, REG_LINK_CTRL, 		  p++);
	FUNC0(hw, REG_IDLE_STATUS, 	  p++);
	FUNC0(hw, REG_MDIO_CTRL, 		  p++);
	FUNC0(hw, REG_SERDES,		  p++);
	FUNC0(hw, REG_MAC_CTRL, 		  p++);
	FUNC0(hw, REG_MAC_IPG_IFG, 	  p++);
	FUNC0(hw, REG_MAC_STA_ADDR, 	  p++);
	FUNC0(hw, REG_MAC_STA_ADDR+4, 	  p++);
	FUNC0(hw, REG_RX_HASH_TABLE, 	  p++);
	FUNC0(hw, REG_RX_HASH_TABLE+4, 	  p++);
	FUNC0(hw, REG_RXQ_CTRL, 		  p++);
	FUNC0(hw, REG_TXQ_CTRL, 		  p++);
	FUNC0(hw, REG_MTU, 		  p++);
	FUNC0(hw, REG_WOL_CTRL, 		  p++);

	FUNC1(hw, MII_BMCR, &phy_data);
	regs_buff[AT_REGS_LEN/sizeof(u32) - 2] = (u32) phy_data;
	FUNC1(hw, MII_BMSR, &phy_data);
	regs_buff[AT_REGS_LEN/sizeof(u32) - 1] = (u32) phy_data;
}