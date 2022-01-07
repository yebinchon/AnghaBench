
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ (* read ) (struct ixgbe_hw*,int ,scalar_t__*) ;scalar_t__ (* calc_checksum ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
typedef scalar_t__ s32 ;


 int IXGBE_EEPROM_CHECKSUM ;
 scalar_t__ IXGBE_ERR_EEPROM_CHECKSUM ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,scalar_t__*) ;
 scalar_t__ stub2 (struct ixgbe_hw*) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int ,scalar_t__*) ;

s32 ixgbe_validate_eeprom_checksum_generic(struct ixgbe_hw *hw,
                                           u16 *checksum_val)
{
 s32 status;
 u16 checksum;
 u16 read_checksum = 0;






 status = hw->eeprom.ops.read(hw, 0, &checksum);

 if (status == 0) {
  checksum = hw->eeprom.ops.calc_checksum(hw);

  hw->eeprom.ops.read(hw, IXGBE_EEPROM_CHECKSUM, &read_checksum);





  if (read_checksum != checksum)
   status = IXGBE_ERR_EEPROM_CHECKSUM;


  if (checksum_val)
   *checksum_val = checksum;
 } else {
  hw_dbg(hw, "EEPROM read failed\n");
 }

 return status;
}
