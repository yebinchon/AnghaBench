
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int) ;
 int swab16 (int ) ;

__attribute__((used)) static int gl518_read_value(struct i2c_client *client, u8 reg)
{
 if ((reg >= 0x07) && (reg <= 0x0c))
  return swab16(i2c_smbus_read_word_data(client, reg));
 else
  return i2c_smbus_read_byte_data(client, reg);
}
