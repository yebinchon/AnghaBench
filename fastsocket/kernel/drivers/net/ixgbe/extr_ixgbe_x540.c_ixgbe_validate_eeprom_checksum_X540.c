
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_7__ {scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {scalar_t__ (* read ) (struct ixgbe_hw*,int ,scalar_t__*) ;scalar_t__ (* calc_checksum ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ mac; TYPE_2__ eeprom; } ;
typedef scalar_t__ s32 ;


 int IXGBE_EEPROM_CHECKSUM ;
 scalar_t__ IXGBE_ERR_EEPROM_CHECKSUM ;
 scalar_t__ IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_EEP_SM ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int ixgbe_read_eerd_generic (struct ixgbe_hw*,int ,scalar_t__*) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,scalar_t__*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ) ;
 scalar_t__ stub3 (struct ixgbe_hw*) ;
 int stub4 (struct ixgbe_hw*,int ) ;

__attribute__((used)) static s32 ixgbe_validate_eeprom_checksum_X540(struct ixgbe_hw *hw,
            u16 *checksum_val)
{
 s32 status;
 u16 checksum;
 u16 read_checksum = 0;






 status = hw->eeprom.ops.read(hw, 0, &checksum);

 if (status != 0) {
  hw_dbg(hw, "EEPROM read failed\n");
  goto out;
 }

 if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM) == 0) {
  checksum = hw->eeprom.ops.calc_checksum(hw);





  ixgbe_read_eerd_generic(hw, IXGBE_EEPROM_CHECKSUM,
     &read_checksum);





  if (read_checksum != checksum)
   status = IXGBE_ERR_EEPROM_CHECKSUM;


  if (checksum_val)
   *checksum_val = checksum;
 } else {
  status = IXGBE_ERR_SWFW_SYNC;
 }

 hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_EEP_SM);
out:
 return status;
}
