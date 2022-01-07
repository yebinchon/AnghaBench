
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int e1000_write_phy_reg (struct e1000_hw*,int,int) ;

__attribute__((used)) static void e1000_phy_disable_receiver(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;


 e1000_write_phy_reg(hw, 29, 0x001F);
 e1000_write_phy_reg(hw, 30, 0x8FFC);
 e1000_write_phy_reg(hw, 29, 0x001A);
 e1000_write_phy_reg(hw, 30, 0x8FF0);
}
