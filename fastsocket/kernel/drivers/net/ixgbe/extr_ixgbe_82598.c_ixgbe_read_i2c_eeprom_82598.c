
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_I2C_EEPROM_DEV_ADDR ;
 int ixgbe_read_i2c_phy_82598 (struct ixgbe_hw*,int ,int ,int *) ;

__attribute__((used)) static s32 ixgbe_read_i2c_eeprom_82598(struct ixgbe_hw *hw, u8 byte_offset,
           u8 *eeprom_data)
{
 return ixgbe_read_i2c_phy_82598(hw, IXGBE_I2C_EEPROM_DEV_ADDR,
     byte_offset, eeprom_data);
}
