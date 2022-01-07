
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i2c_client {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ i2c_smbus_read_byte_data (struct i2c_client*,scalar_t__) ;

__attribute__((used)) static s32 ds1307_read_block_data_once(struct i2c_client *client, u8 command,
      u8 length, u8 *values)
{
 s32 i, data;

 for (i = 0; i < length; i++) {
  data = i2c_smbus_read_byte_data(client, command + i);
  if (data < 0)
   return data;
  values[i] = data;
 }
 return i;
}
