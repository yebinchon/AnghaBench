
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 scalar_t__ LM77_REG_CONF ;
 int i2c_smbus_read_byte_data (struct i2c_client*,scalar_t__) ;
 int i2c_smbus_read_word_data (struct i2c_client*,scalar_t__) ;
 int swab16 (int ) ;

__attribute__((used)) static u16 lm77_read_value(struct i2c_client *client, u8 reg)
{
 if (reg == LM77_REG_CONF)
  return i2c_smbus_read_byte_data(client, reg);
 else
  return swab16(i2c_smbus_read_word_data(client, reg));
}
