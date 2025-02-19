
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
struct dme1737_data {scalar_t__ addr; struct i2c_client* client; } ;
typedef scalar_t__ s32 ;


 int dev_warn (int *,char*,int ) ;
 scalar_t__ i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static s32 dme1737_write(const struct dme1737_data *data, u8 reg, u8 val)
{
 struct i2c_client *client = data->client;
 s32 res = 0;

 if (client) {
  res = i2c_smbus_write_byte_data(client, reg, val);

  if (res < 0) {
   dev_warn(&client->dev, "Write to register "
     "0x%02x failed! Please report to the driver "
     "maintainer.\n", reg);
  }
 } else {
  outb(reg, data->addr);
  outb(val, data->addr + 1);
 }

 return res;
}
