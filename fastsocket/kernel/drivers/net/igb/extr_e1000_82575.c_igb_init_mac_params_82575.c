
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int setup_physical_interface; int release_swfw_sync; int acquire_swfw_sync; int reset_hw; } ;
struct e1000_mac_info {int mta_reg_count; int type; int asf_firmware_present; int arc_subsystem_valid; TYPE_2__ ops; int rar_entry_count; } ;
struct TYPE_6__ {scalar_t__ media_type; } ;
struct e1000_dev_spec_82575 {int eee_disable; int clear_semaphore_once; } ;
struct TYPE_4__ {struct e1000_dev_spec_82575 _82575; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ dev_spec; struct e1000_mac_info mac; } ;
typedef int s32 ;


 int E1000_FWSM ;
 int E1000_FWSM_MODE_MASK ;
 int E1000_RAR_ENTRIES_82575 ;
 int E1000_RAR_ENTRIES_82576 ;
 int E1000_RAR_ENTRIES_82580 ;
 int E1000_RAR_ENTRIES_I350 ;


 int const e1000_i210 ;


 scalar_t__ e1000_media_type_copper ;
 int igb_acquire_swfw_sync_82575 ;
 int igb_acquire_swfw_sync_i210 ;
 int igb_release_swfw_sync_82575 ;
 int igb_release_swfw_sync_i210 ;
 int igb_reset_hw_82575 ;
 int igb_reset_hw_82580 ;
 int igb_setup_copper_link_82575 ;
 int igb_setup_serdes_link_82575 ;
 int rd32 (int ) ;

__attribute__((used)) static s32 igb_init_mac_params_82575(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 struct e1000_dev_spec_82575 *dev_spec = &hw->dev_spec._82575;


 mac->mta_reg_count = 128;

 switch (mac->type) {
 case 131:
  mac->rar_entry_count = E1000_RAR_ENTRIES_82576;
  break;
 case 130:
  mac->rar_entry_count = E1000_RAR_ENTRIES_82580;
  break;
 case 129:
 case 128:
  mac->rar_entry_count = E1000_RAR_ENTRIES_I350;
  break;
 default:
  mac->rar_entry_count = E1000_RAR_ENTRIES_82575;
  break;
 }

 if (mac->type >= 130)
  mac->ops.reset_hw = igb_reset_hw_82580;
 else
  mac->ops.reset_hw = igb_reset_hw_82575;

 if (mac->type >= e1000_i210) {
  mac->ops.acquire_swfw_sync = igb_acquire_swfw_sync_i210;
  mac->ops.release_swfw_sync = igb_release_swfw_sync_i210;

 } else {
  mac->ops.acquire_swfw_sync = igb_acquire_swfw_sync_82575;
  mac->ops.release_swfw_sync = igb_release_swfw_sync_82575;
 }


 mac->asf_firmware_present = 1;

 mac->arc_subsystem_valid =
  (rd32(E1000_FWSM) & E1000_FWSM_MODE_MASK)
   ? 1 : 0;

 if (mac->type >= 129)
  dev_spec->eee_disable = 0;
 else
  dev_spec->eee_disable = 1;

 if (mac->type >= e1000_i210)
  dev_spec->clear_semaphore_once = 1;

 mac->ops.setup_physical_interface =
  (hw->phy.media_type == e1000_media_type_copper)
   ? igb_setup_copper_link_82575
   : igb_setup_serdes_link_82575;

 return 0;
}
