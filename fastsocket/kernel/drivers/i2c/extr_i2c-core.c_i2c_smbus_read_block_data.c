
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int* block; } ;
typedef int u8 ;
struct i2c_client {int flags; int addr; int adapter; } ;
typedef int s32 ;


 int I2C_SMBUS_BLOCK_DATA ;
 int I2C_SMBUS_READ ;
 int i2c_smbus_xfer (int ,int ,int ,int ,int ,int ,union i2c_smbus_data*) ;
 int memcpy (int *,int*,int) ;

s32 i2c_smbus_read_block_data(struct i2c_client *client, u8 command,
         u8 *values)
{
 union i2c_smbus_data data;
 int status;

 status = i2c_smbus_xfer(client->adapter, client->addr, client->flags,
    I2C_SMBUS_READ, command,
    I2C_SMBUS_BLOCK_DATA, &data);
 if (status)
  return status;

 memcpy(values, &data.block[1], data.block[0]);
 return data.block[0];
}
