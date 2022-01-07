
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int (* read ) (struct ixgbe_hw*,scalar_t__,int*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ media_type; } ;
struct ixgbe_hw {TYPE_3__ eeprom; TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IXGBE_ERR_EEPROM_VERSION ;
 scalar_t__ IXGBE_FW_PASSTHROUGH_PATCH_CONFIG_PTR ;
 scalar_t__ IXGBE_FW_PATCH_VERSION_4 ;
 scalar_t__ IXGBE_FW_PTR ;
 scalar_t__ ixgbe_media_type_fiber ;
 int stub1 (struct ixgbe_hw*,scalar_t__,int*) ;
 int stub2 (struct ixgbe_hw*,scalar_t__,int*) ;
 int stub3 (struct ixgbe_hw*,scalar_t__,int*) ;

__attribute__((used)) static s32 ixgbe_verify_fw_version_82599(struct ixgbe_hw *hw)
{
 s32 status = IXGBE_ERR_EEPROM_VERSION;
 u16 fw_offset, fw_ptp_cfg_offset;
 u16 fw_version = 0;


 if (hw->phy.media_type != ixgbe_media_type_fiber) {
  status = 0;
  goto fw_version_out;
 }


 hw->eeprom.ops.read(hw, IXGBE_FW_PTR, &fw_offset);

 if ((fw_offset == 0) || (fw_offset == 0xFFFF))
  goto fw_version_out;


 hw->eeprom.ops.read(hw, (fw_offset +
                          IXGBE_FW_PASSTHROUGH_PATCH_CONFIG_PTR),
                          &fw_ptp_cfg_offset);

 if ((fw_ptp_cfg_offset == 0) || (fw_ptp_cfg_offset == 0xFFFF))
  goto fw_version_out;


 hw->eeprom.ops.read(hw, (fw_ptp_cfg_offset +
                          IXGBE_FW_PATCH_VERSION_4),
                          &fw_version);

 if (fw_version > 0x5)
  status = 0;

fw_version_out:
 return status;
}
