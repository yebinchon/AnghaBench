
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int E1000_VFTA ;
 int array_wr32 (int ,int ,int ) ;
 int wrfl () ;

__attribute__((used)) static void igb_write_vfta(struct e1000_hw *hw, u32 offset, u32 value)
{
 array_wr32(E1000_VFTA, offset, value);
 wrfl();
}
