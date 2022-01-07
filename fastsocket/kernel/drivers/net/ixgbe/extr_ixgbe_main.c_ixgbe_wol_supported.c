
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int func; } ;
struct ixgbe_hw {TYPE_1__ bus; } ;
struct ixgbe_adapter {int eeprom_cap; struct ixgbe_hw hw; } ;


 int IXGBE_DEVICE_CAPS_WOL_MASK ;
 int IXGBE_DEVICE_CAPS_WOL_PORT0 ;
 int IXGBE_DEVICE_CAPS_WOL_PORT0_1 ;
 int IXGBE_SUBDEV_ID_82599_KX4_KR_MEZZ ;





int ixgbe_wol_supported(struct ixgbe_adapter *adapter, u16 device_id,
   u16 subdevice_id)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u16 wol_cap = adapter->eeprom_cap & IXGBE_DEVICE_CAPS_WOL_MASK;
 int is_wol_supported = 0;

 switch (device_id) {
 case 137:

  switch (subdevice_id) {
  case 133:

   if (hw->bus.func != 0)
    break;
  case 128:
  case 129:
  case 130:
  case 132:
  case 131:
   is_wol_supported = 1;
   break;
  }
  break;
 case 140:

  switch (subdevice_id) {
  case 134:
   is_wol_supported = 1;
   break;
  }
  break;
 case 139:

  if (subdevice_id != IXGBE_SUBDEV_ID_82599_KX4_KR_MEZZ)
   is_wol_supported = 1;
  break;
 case 138:
  is_wol_supported = 1;
  break;
 case 136:
 case 135:

  if ((wol_cap == IXGBE_DEVICE_CAPS_WOL_PORT0_1) ||
      ((wol_cap == IXGBE_DEVICE_CAPS_WOL_PORT0) &&
       (hw->bus.func == 0))) {
   is_wol_supported = 1;
  }
  break;
 }

 return is_wol_supported;
}
