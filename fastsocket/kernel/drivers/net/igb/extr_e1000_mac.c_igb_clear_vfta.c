
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;


 int E1000_VFTA ;
 scalar_t__ E1000_VLAN_FILTER_TBL_SIZE ;
 int array_wr32 (int ,scalar_t__,int ) ;
 int wrfl () ;

void igb_clear_vfta(struct e1000_hw *hw)
{
 u32 offset;

 for (offset = 0; offset < E1000_VLAN_FILTER_TBL_SIZE; offset++) {
  array_wr32(E1000_VFTA, offset, 0);
  wrfl();
 }
}
