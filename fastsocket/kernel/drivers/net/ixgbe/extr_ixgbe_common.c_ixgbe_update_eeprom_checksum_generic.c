
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {scalar_t__ (* read ) (struct ixgbe_hw*,int ,int *) ;scalar_t__ (* write ) (struct ixgbe_hw*,int ,int ) ;int (* calc_checksum ) (struct ixgbe_hw*) ;} ;
struct TYPE_3__ {TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_1__ eeprom; } ;
typedef scalar_t__ s32 ;


 int IXGBE_EEPROM_CHECKSUM ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int *) ;
 int stub2 (struct ixgbe_hw*) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int ,int ) ;

s32 ixgbe_update_eeprom_checksum_generic(struct ixgbe_hw *hw)
{
 s32 status;
 u16 checksum;






 status = hw->eeprom.ops.read(hw, 0, &checksum);

 if (status == 0) {
  checksum = hw->eeprom.ops.calc_checksum(hw);
  status = hw->eeprom.ops.write(hw, IXGBE_EEPROM_CHECKSUM,
           checksum);
 } else {
  hw_dbg(hw, "EEPROM read failed\n");
 }

 return status;
}
