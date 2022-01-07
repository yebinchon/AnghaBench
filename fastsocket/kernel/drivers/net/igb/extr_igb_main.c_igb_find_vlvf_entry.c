
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {struct e1000_hw hw; } ;


 int E1000_VLVF (int) ;
 int E1000_VLVF_ARRAY_SIZE ;
 int E1000_VLVF_VLANID_ENABLE ;
 int E1000_VLVF_VLANID_MASK ;
 int rd32 (int ) ;

__attribute__((used)) static int igb_find_vlvf_entry(struct igb_adapter *adapter, int vid)
{
 struct e1000_hw *hw = &adapter->hw;
 int i;
 u32 reg;


 for (i = 0; i < E1000_VLVF_ARRAY_SIZE; i++) {
  reg = rd32(E1000_VLVF(i));
  if ((reg & E1000_VLVF_VLANID_ENABLE) &&
      vid == (reg & E1000_VLVF_VLANID_MASK))
   break;
 }

 if (i >= E1000_VLVF_ARRAY_SIZE)
  i = -1;

 return i;
}
