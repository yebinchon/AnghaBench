
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {int (* init_params ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {scalar_t__ word_size; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
typedef int s32 ;


 int IXGBE_ERR_EEPROM ;
 int ixgbe_write_eeprom_buffer_bit_bang (struct ixgbe_hw*,scalar_t__,int,scalar_t__*) ;
 int stub1 (struct ixgbe_hw*) ;

s32 ixgbe_write_eeprom_generic(struct ixgbe_hw *hw, u16 offset, u16 data)
{
 s32 status;

 hw->eeprom.ops.init_params(hw);

 if (offset >= hw->eeprom.word_size) {
  status = IXGBE_ERR_EEPROM;
  goto out;
 }

 status = ixgbe_write_eeprom_buffer_bit_bang(hw, offset, 1, &data);

out:
 return status;
}
