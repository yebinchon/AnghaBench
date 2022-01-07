
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int fw_version; struct e1000_hw hw; } ;
struct e1000_fw_version {int invm_major; int invm_minor; int invm_img_type; int eep_major; int eep_minor; int etrack_id; int or_major; int or_build; int or_patch; int eep_build; int or_valid; } ;




 int igb_get_flash_presence_i210 (struct e1000_hw*) ;
 int igb_get_fw_version (struct e1000_hw*,struct e1000_fw_version*) ;
 int snprintf (int ,int,char*,int,int,int,...) ;

void igb_set_fw_version(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 struct e1000_fw_version fw;

 igb_get_fw_version(hw, &fw);

 switch (hw->mac.type) {
 case 129:
 case 128:
  if (!(igb_get_flash_presence_i210(hw))) {
   snprintf(adapter->fw_version,
     sizeof(adapter->fw_version),
     "%2d.%2d-%d",
     fw.invm_major, fw.invm_minor,
     fw.invm_img_type);
   break;
  }

 default:

  if (fw.or_valid) {
   snprintf(adapter->fw_version,
     sizeof(adapter->fw_version),
     "%d.%d, 0x%08x, %d.%d.%d",
     fw.eep_major, fw.eep_minor, fw.etrack_id,
     fw.or_major, fw.or_build, fw.or_patch);

  } else if (fw.etrack_id != 0X0000) {
   snprintf(adapter->fw_version,
       sizeof(adapter->fw_version),
       "%d.%d, 0x%08x",
       fw.eep_major, fw.eep_minor, fw.etrack_id);
  } else {
  snprintf(adapter->fw_version,
      sizeof(adapter->fw_version),
      "%d.%d.%d",
      fw.eep_major, fw.eep_minor, fw.eep_build);
  }
  break;
 }
 return;
}
