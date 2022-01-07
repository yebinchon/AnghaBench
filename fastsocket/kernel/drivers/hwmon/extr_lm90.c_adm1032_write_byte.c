
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int flags; int addr; int adapter; } ;
typedef int s32 ;


 int I2C_CLIENT_PEC ;
 int I2C_SMBUS_BYTE ;
 int I2C_SMBUS_WRITE ;
 int i2c_smbus_xfer (int ,int ,int,int ,int ,int ,int *) ;

__attribute__((used)) static inline s32 adm1032_write_byte(struct i2c_client *client, u8 value)
{
 return i2c_smbus_xfer(client->adapter, client->addr,
         client->flags & ~I2C_CLIENT_PEC,
         I2C_SMBUS_WRITE, value, I2C_SMBUS_BYTE, ((void*)0));
}
