
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl2_hw {int dummy; } ;
typedef int s32 ;


 int ATL2_WRITE_REG (struct atl2_hw*,int ,int ) ;
 int ATL2_WRITE_REG_ARRAY (struct atl2_hw*,int ,int,int ) ;
 int REG_RX_HASH_TABLE ;
 int atl2_init_flash_opcode (struct atl2_hw*) ;
 int atl2_init_pcie (struct atl2_hw*) ;
 int atl2_phy_init (struct atl2_hw*) ;

__attribute__((used)) static s32 atl2_init_hw(struct atl2_hw *hw)
{
 u32 ret_val = 0;

 atl2_init_pcie(hw);



 ATL2_WRITE_REG(hw, REG_RX_HASH_TABLE, 0);
 ATL2_WRITE_REG_ARRAY(hw, REG_RX_HASH_TABLE, 1, 0);

 atl2_init_flash_opcode(hw);

 ret_val = atl2_phy_init(hw);

 return ret_val;
}
