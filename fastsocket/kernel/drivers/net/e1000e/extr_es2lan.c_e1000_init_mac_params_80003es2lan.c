
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int (* set_lan_id ) (struct e1000_hw*) ;int setup_physical_interface; int check_for_link; } ;
struct e1000_mac_info {int mta_reg_count; int has_fwsm; int arc_subsystem_valid; int adaptive_ifs; TYPE_4__ ops; int rar_entry_count; } ;
struct TYPE_7__ {int media_type; } ;
struct e1000_hw {struct e1000_mac_info mac; TYPE_3__ phy; TYPE_2__* adapter; } ;
typedef int s32 ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_5__ {int device; } ;



 int E1000_FWSM_MODE_MASK ;
 int E1000_RAR_ENTRIES ;
 int FWSM ;
 int e1000_media_type_copper ;
 int e1000_media_type_internal_serdes ;
 int e1000_setup_copper_link_80003es2lan ;
 int e1000e_check_for_copper_link ;
 int e1000e_check_for_serdes_link ;
 int e1000e_setup_fiber_serdes_link ;
 int er32 (int ) ;
 int stub1 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_init_mac_params_80003es2lan(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;


 switch (hw->adapter->pdev->device) {
 case 128:
  hw->phy.media_type = e1000_media_type_internal_serdes;
  mac->ops.check_for_link = e1000e_check_for_serdes_link;
  mac->ops.setup_physical_interface =
      e1000e_setup_fiber_serdes_link;
  break;
 default:
  hw->phy.media_type = e1000_media_type_copper;
  mac->ops.check_for_link = e1000e_check_for_copper_link;
  mac->ops.setup_physical_interface =
      e1000_setup_copper_link_80003es2lan;
  break;
 }


 mac->mta_reg_count = 128;

 mac->rar_entry_count = E1000_RAR_ENTRIES;

 mac->has_fwsm = 1;

 mac->arc_subsystem_valid = !!(er32(FWSM) & E1000_FWSM_MODE_MASK);

 mac->adaptive_ifs = 0;


 hw->mac.ops.set_lan_id(hw);

 return 0;
}
