
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct atl1_hw {int phy_configured; scalar_t__ hw_addr; } ;
typedef scalar_t__ s32 ;


 scalar_t__ REG_RX_HASH_TABLE ;
 int atl1_init_flash_opcode (struct atl1_hw*) ;
 scalar_t__ atl1_phy_leave_power_saving (struct atl1_hw*) ;
 scalar_t__ atl1_setup_link (struct atl1_hw*) ;
 scalar_t__ atl1_write_phy_reg (struct atl1_hw*,int,int) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static s32 atl1_init_hw(struct atl1_hw *hw)
{
 u32 ret_val = 0;


 iowrite32(0, hw->hw_addr + REG_RX_HASH_TABLE);

 iowrite32(0, (hw->hw_addr + REG_RX_HASH_TABLE) + (1 << 2));

 atl1_init_flash_opcode(hw);

 if (!hw->phy_configured) {

  ret_val = atl1_write_phy_reg(hw, 18, 0xC00);
  if (ret_val)
   return ret_val;

  ret_val = atl1_phy_leave_power_saving(hw);
  if (ret_val)
   return ret_val;

  ret_val = atl1_setup_link(hw);
 }
 return ret_val;
}
