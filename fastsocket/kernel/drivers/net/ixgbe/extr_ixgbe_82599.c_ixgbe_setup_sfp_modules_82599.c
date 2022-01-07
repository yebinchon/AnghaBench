
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_11__ {int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_12__ {int orig_autoc; TYPE_5__ ops; int cached_autoc; } ;
struct TYPE_9__ {int (* read ) (struct ixgbe_hw*,int,int*) ;} ;
struct TYPE_10__ {int semaphore_delay; TYPE_3__ ops; } ;
struct TYPE_7__ {int * reset; } ;
struct TYPE_8__ {scalar_t__ sfp_type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_6__ mac; TYPE_4__ eeprom; TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int IXGBE_AUTOC ;
 int IXGBE_AUTOC_LMS_10G_SERIAL ;
 int IXGBE_CORECTL ;
 scalar_t__ IXGBE_ERR_SFP_SETUP_NOT_COMPLETE ;
 scalar_t__ IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_MAC_CSR_SM ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ ixgbe_get_sfp_init_sequence_offsets (struct ixgbe_hw*,int*,int*) ;
 int ixgbe_init_mac_link_ops_82599 (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_reset_pipeline_82599 (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_sfp_type_unknown ;
 scalar_t__ ixgbe_verify_lesm_fw_enabled_82599 (struct ixgbe_hw*) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ) ;
 int stub2 (struct ixgbe_hw*,int,int*) ;
 int stub3 (struct ixgbe_hw*,int,int*) ;
 int stub4 (struct ixgbe_hw*,int ) ;
 scalar_t__ stub5 (struct ixgbe_hw*,int ) ;
 int stub6 (struct ixgbe_hw*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 ixgbe_setup_sfp_modules_82599(struct ixgbe_hw *hw)
{
 s32 ret_val = 0;
 u16 list_offset, data_offset, data_value;
 bool got_lock = 0;

 if (hw->phy.sfp_type != ixgbe_sfp_type_unknown) {
  ixgbe_init_mac_link_ops_82599(hw);

  hw->phy.ops.reset = ((void*)0);

  ret_val = ixgbe_get_sfp_init_sequence_offsets(hw, &list_offset,
                                                &data_offset);
  if (ret_val != 0)
   goto setup_sfp_out;


  ret_val = hw->mac.ops.acquire_swfw_sync(hw,
                                          IXGBE_GSSR_MAC_CSR_SM);
  if (ret_val != 0) {
   ret_val = IXGBE_ERR_SWFW_SYNC;
   goto setup_sfp_out;
  }

  hw->eeprom.ops.read(hw, ++data_offset, &data_value);
  while (data_value != 0xffff) {
   IXGBE_WRITE_REG(hw, IXGBE_CORECTL, data_value);
   IXGBE_WRITE_FLUSH(hw);
   hw->eeprom.ops.read(hw, ++data_offset, &data_value);
  }


  hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_MAC_CSR_SM);




  usleep_range(hw->eeprom.semaphore_delay * 1000,
        hw->eeprom.semaphore_delay * 2000);





  if (ixgbe_verify_lesm_fw_enabled_82599(hw)) {
   ret_val = hw->mac.ops.acquire_swfw_sync(hw,
       IXGBE_GSSR_MAC_CSR_SM);
   if (ret_val)
    goto setup_sfp_out;

   got_lock = 1;
  }


  IXGBE_WRITE_REG(hw, IXGBE_AUTOC, ((hw->mac.orig_autoc) |
    IXGBE_AUTOC_LMS_10G_SERIAL));
  hw->mac.cached_autoc = IXGBE_READ_REG(hw, IXGBE_AUTOC);
  ret_val = ixgbe_reset_pipeline_82599(hw);

  if (got_lock) {
   hw->mac.ops.release_swfw_sync(hw,
            IXGBE_GSSR_MAC_CSR_SM);
   got_lock = 0;
  }

  if (ret_val) {
   hw_dbg(hw, " sfp module setup not complete\n");
   ret_val = IXGBE_ERR_SFP_SETUP_NOT_COMPLETE;
   goto setup_sfp_out;
  }
 }

setup_sfp_out:
 return ret_val;
}
