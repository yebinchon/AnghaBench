
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 scalar_t__ LM75_REG_CONF ;
 int i2c_smbus_write_byte_data (struct i2c_client*,scalar_t__,int ) ;
 int i2c_smbus_write_word_data (struct i2c_client*,scalar_t__,int ) ;
 int swab16 (int ) ;

__attribute__((used)) static int lm75_write_value(struct i2c_client *client, u8 reg, u16 value)
{
 if (reg == LM75_REG_CONF)
  return i2c_smbus_write_byte_data(client, reg, value);
 else
  return i2c_smbus_write_word_data(client, reg, swab16(value));
}
