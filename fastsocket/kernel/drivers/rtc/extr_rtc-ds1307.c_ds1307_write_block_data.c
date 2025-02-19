
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct i2c_client {int dev; } ;
typedef size_t s32 ;


 int BLOCK_DATA_MAX_TRIES ;
 size_t EIO ;
 int I2C_SMBUS_BLOCK_MAX ;
 int dev_dbg (int *,char*,size_t) ;
 int dev_err (int *,char*) ;
 size_t ds1307_read_block_data_once (struct i2c_client*,size_t,size_t,size_t*) ;
 size_t i2c_smbus_write_byte_data (struct i2c_client*,size_t,size_t const) ;
 scalar_t__ memcmp (size_t*,size_t const*,size_t) ;

__attribute__((used)) static s32 ds1307_write_block_data(struct i2c_client *client, u8 command,
       u8 length, const u8 *values)
{
 u8 currvalues[I2C_SMBUS_BLOCK_MAX];
 int tries = 0;

 dev_dbg(&client->dev, "ds1307_write_block_data (length=%d)\n", length);
 do {
  s32 i, ret;

  if (++tries > BLOCK_DATA_MAX_TRIES) {
   dev_err(&client->dev,
    "ds1307_write_block_data failed\n");
   return -EIO;
  }
  for (i = 0; i < length; i++) {
   ret = i2c_smbus_write_byte_data(client, command + i,
       values[i]);
   if (ret < 0)
    return ret;
  }
  ret = ds1307_read_block_data_once(client, command, length,
        currvalues);
  if (ret < 0)
   return ret;
 } while (memcmp(currvalues, values, length));
 return length;
}
