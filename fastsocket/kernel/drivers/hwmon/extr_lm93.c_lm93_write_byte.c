
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_warn (int *,char*,int ,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int lm93_write_byte(struct i2c_client *client, u8 reg, u8 value)
{
 int result;


 result = i2c_smbus_write_byte_data(client, reg, value);

 if (result < 0)
  dev_warn(&client->dev,"lm93: write byte data failed, "
    "0x%02x at address 0x%02x.\n", value, reg);

 return result;
}
