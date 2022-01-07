
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_write_byte_data (struct i2c_client*,int,int ) ;
 int i2c_smbus_write_word_data (struct i2c_client*,int,int ) ;
 int swab16 (int ) ;

__attribute__((used)) static int gl520_write_value(struct i2c_client *client, u8 reg, u16 value)
{
 if ((reg >= 0x07) && (reg <= 0x0c))
  return i2c_smbus_write_word_data(client, reg, swab16(value));
 else
  return i2c_smbus_write_byte_data(client, reg, value);
}
