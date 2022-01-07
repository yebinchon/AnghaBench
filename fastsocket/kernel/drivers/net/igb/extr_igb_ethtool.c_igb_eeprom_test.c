
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int (* validate ) (struct e1000_hw*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct TYPE_6__ {int type; } ;
struct e1000_hw {TYPE_2__ nvm; TYPE_3__ mac; } ;
struct igb_adapter {struct e1000_hw hw; } ;




 int igb_get_flash_presence_i210 (struct e1000_hw*) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

__attribute__((used)) static int igb_eeprom_test(struct igb_adapter *adapter, u64 *data)
{
 struct e1000_hw *hw = &adapter->hw;

 *data = 0;


 switch (hw->mac.type) {
 case 129:
 case 128:
  if (igb_get_flash_presence_i210(hw)) {
   if (adapter->hw.nvm.ops.validate(&adapter->hw) < 0)
    *data = 2;
  }
  break;
 default:
  if (adapter->hw.nvm.ops.validate(&adapter->hw) < 0)
   *data = 2;
  break;
 }

 return *data;
}
