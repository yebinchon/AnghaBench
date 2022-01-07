
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int E1000_VFTA ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,int ,int ) ;
 int e1e_flush () ;

void e1000_write_vfta_generic(struct e1000_hw *hw, u32 offset, u32 value)
{
 E1000_WRITE_REG_ARRAY(hw, E1000_VFTA, offset, value);
 e1e_flush();
}
