
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
struct igb_adapter {struct e1000_hw hw; } ;


 int igb_write_phy_reg (struct e1000_hw*,int,int) ;

__attribute__((used)) static void igb_phy_disable_receiver(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;


 igb_write_phy_reg(hw, 29, 0x001F);
 igb_write_phy_reg(hw, 30, 0x8FFC);
 igb_write_phy_reg(hw, 29, 0x001A);
 igb_write_phy_reg(hw, 30, 0x8FF0);
}
