
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct TYPE_7__ {scalar_t__ (* read ) (struct ixgbe_hw*,int ,int *) ;int (* calc_checksum ) (struct ixgbe_hw*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; TYPE_4__ eeprom; } ;
typedef scalar_t__ s32 ;


 int IXGBE_EEPROM_CHECKSUM ;
 scalar_t__ IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_EEP_SM ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ ixgbe_update_flash_X540 (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_write_eewr_generic (struct ixgbe_hw*,int ,int ) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int *) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ) ;
 int stub3 (struct ixgbe_hw*) ;
 int stub4 (struct ixgbe_hw*,int ) ;

__attribute__((used)) static s32 ixgbe_update_eeprom_checksum_X540(struct ixgbe_hw *hw)
{
 s32 status;
 u16 checksum;






 status = hw->eeprom.ops.read(hw, 0, &checksum);

 if (status != 0)
  hw_dbg(hw, "EEPROM read failed\n");

 if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM) == 0) {
  checksum = hw->eeprom.ops.calc_checksum(hw);





  status = ixgbe_write_eewr_generic(hw, IXGBE_EEPROM_CHECKSUM,
        checksum);

 if (status == 0)
  status = ixgbe_update_flash_X540(hw);
 else
  status = IXGBE_ERR_SWFW_SYNC;
 }

 hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_EEP_SM);

 return status;
}
