
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 int msp430 ;

int dm355evm_msp_write(u8 value, u8 reg)
{
 return i2c_smbus_write_byte_data(msp430, reg, value);
}
