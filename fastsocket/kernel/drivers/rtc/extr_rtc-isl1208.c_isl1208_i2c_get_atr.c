
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ISL1208_REG_ATR ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static int
isl1208_i2c_get_atr(struct i2c_client *client)
{
 int atr = i2c_smbus_read_byte_data(client, ISL1208_REG_ATR);
 if (atr < 0)
  return atr;
 atr &= 0x3f;
 atr ^= 1 << 5;
 atr += 2 * 9;

 return atr;
}
