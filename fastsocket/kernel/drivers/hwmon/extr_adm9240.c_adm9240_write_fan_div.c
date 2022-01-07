
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int ADM9240_REG_VID_FAN_DIV ;
 int dev_dbg (int *,char*,int,int,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static void adm9240_write_fan_div(struct i2c_client *client, int nr,
  u8 fan_div)
{
 u8 reg, old, shift = (nr + 2) * 2;

 reg = i2c_smbus_read_byte_data(client, ADM9240_REG_VID_FAN_DIV);
 old = (reg >> shift) & 3;
 reg &= ~(3 << shift);
 reg |= (fan_div << shift);
 i2c_smbus_write_byte_data(client, ADM9240_REG_VID_FAN_DIV, reg);
 dev_dbg(&client->dev, "fan%d clock divider changed from %u "
   "to %u\n", nr + 1, 1 << old, 1 << fan_div);
}
