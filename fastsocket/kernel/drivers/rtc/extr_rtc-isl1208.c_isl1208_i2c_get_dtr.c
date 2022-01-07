
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int EIO ;
 int ISL1208_REG_DTR ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static int
isl1208_i2c_get_dtr(struct i2c_client *client)
{
 int dtr = i2c_smbus_read_byte_data(client, ISL1208_REG_DTR);
 if (dtr < 0)
  return -EIO;


 dtr = ((dtr & 0x3) * 20) * (dtr & (1 << 2) ? -1 : 1);

 return dtr;
}
