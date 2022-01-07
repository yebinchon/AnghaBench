
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
typedef int s32 ;


 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;

__attribute__((used)) static int tw9910_mask_set(struct i2c_client *client, u8 command,
      u8 mask, u8 set)
{
 s32 val = i2c_smbus_read_byte_data(client, command);
 if (val < 0)
  return val;

 val &= ~mask;
 val |= set & mask;

 return i2c_smbus_write_byte_data(client, command, val);
}
