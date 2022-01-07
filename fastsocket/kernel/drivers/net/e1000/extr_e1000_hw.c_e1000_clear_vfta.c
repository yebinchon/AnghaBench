
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;


 scalar_t__ E1000_VLAN_FILTER_TBL_SIZE ;
 int E1000_WRITE_FLUSH () ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,scalar_t__,scalar_t__) ;
 int VFTA ;

__attribute__((used)) static void e1000_clear_vfta(struct e1000_hw *hw)
{
 u32 offset;
 u32 vfta_value = 0;
 u32 vfta_offset = 0;
 u32 vfta_bit_in_reg = 0;

 for (offset = 0; offset < E1000_VLAN_FILTER_TBL_SIZE; offset++) {



  vfta_value = (offset == vfta_offset) ? vfta_bit_in_reg : 0;
  E1000_WRITE_REG_ARRAY(hw, VFTA, offset, vfta_value);
  E1000_WRITE_FLUSH();
 }
}
