
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int flags; int dev; } ;


 int I2C_CLIENT_PEC ;
 int adm1032_write_byte (struct i2c_client*,int) ;
 int dev_warn (int *,char*,int,int) ;
 int i2c_smbus_read_byte (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;

__attribute__((used)) static int lm90_read_reg(struct i2c_client* client, u8 reg, u8 *value)
{
 int err;

  if (client->flags & I2C_CLIENT_PEC) {
   err = adm1032_write_byte(client, reg);
   if (err >= 0)
    err = i2c_smbus_read_byte(client);
  } else
   err = i2c_smbus_read_byte_data(client, reg);

 if (err < 0) {
  dev_warn(&client->dev, "Register %#02x read failed (%d)\n",
    reg, err);
  return err;
 }
 *value = err;

 return 0;
}
