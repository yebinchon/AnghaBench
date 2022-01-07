
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int MAX17040_VER_LSB ;
 int MAX17040_VER_MSB ;
 int dev_info (int *,char*,int ,int ) ;
 int max17040_read_reg (struct i2c_client*,int ) ;

__attribute__((used)) static void max17040_get_version(struct i2c_client *client)
{
 u8 msb;
 u8 lsb;

 msb = max17040_read_reg(client, MAX17040_VER_MSB);
 lsb = max17040_read_reg(client, MAX17040_VER_LSB);

 dev_info(&client->dev, "MAX17040 Fuel-Gauge Ver %d%d\n", msb, lsb);
}
