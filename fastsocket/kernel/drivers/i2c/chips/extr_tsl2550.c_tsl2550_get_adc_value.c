
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int EAGAIN ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static int tsl2550_get_adc_value(struct i2c_client *client, u8 cmd)
{
 int ret;

 ret = i2c_smbus_read_byte_data(client, cmd);
 if (ret < 0)
  return ret;
 if (!(ret & 0x80))
  return -EAGAIN;
 return ret & 0x7f;
}
