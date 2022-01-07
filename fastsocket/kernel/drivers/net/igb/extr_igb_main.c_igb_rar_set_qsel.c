
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {struct e1000_hw hw; } ;


 int E1000_RAH (int) ;
 int E1000_RAH_AV ;
 int E1000_RAH_POOL_1 ;
 int E1000_RAL (int) ;
 scalar_t__ e1000_82575 ;
 int wr32 (int ,int) ;
 int wrfl () ;

__attribute__((used)) static void igb_rar_set_qsel(struct igb_adapter *adapter, u8 *addr, u32 index,
        u8 qsel)
{
 u32 rar_low, rar_high;
 struct e1000_hw *hw = &adapter->hw;




 rar_low = ((u32) addr[0] | ((u32) addr[1] << 8) |
     ((u32) addr[2] << 16) | ((u32) addr[3] << 24));
 rar_high = ((u32) addr[4] | ((u32) addr[5] << 8));


 rar_high |= E1000_RAH_AV;

 if (hw->mac.type == e1000_82575)
  rar_high |= E1000_RAH_POOL_1 * qsel;
 else
  rar_high |= E1000_RAH_POOL_1 << qsel;

 wr32(E1000_RAL(index), rar_low);
 wrfl();
 wr32(E1000_RAH(index), rar_high);
 wrfl();
}
