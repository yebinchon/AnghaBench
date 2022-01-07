
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct ds1307 {int flags; } ;
struct device {int dummy; } ;


 int DS1337_BIT_A1IE ;
 int DS1337_REG_CONTROL ;
 int ENOIOCTLCMD ;
 int ENOTTY ;
 int HAS_ALARM ;


 struct ds1307* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int test_bit (int ,int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int ds1307_ioctl(struct device *dev, unsigned int cmd, unsigned long arg)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct ds1307 *ds1307 = i2c_get_clientdata(client);
 int ret;

 switch (cmd) {
 case 129:
  if (!test_bit(HAS_ALARM, &ds1307->flags))
   return -ENOTTY;

  ret = i2c_smbus_read_byte_data(client, DS1337_REG_CONTROL);
  if (ret < 0)
   return ret;

  ret &= ~DS1337_BIT_A1IE;

  ret = i2c_smbus_write_byte_data(client,
      DS1337_REG_CONTROL, ret);
  if (ret < 0)
   return ret;

  break;

 case 128:
  if (!test_bit(HAS_ALARM, &ds1307->flags))
   return -ENOTTY;

  ret = i2c_smbus_read_byte_data(client, DS1337_REG_CONTROL);
  if (ret < 0)
   return ret;

  ret |= DS1337_BIT_A1IE;

  ret = i2c_smbus_write_byte_data(client,
      DS1337_REG_CONTROL, ret);
  if (ret < 0)
   return ret;

  break;

 default:
  return -ENOIOCTLCMD;
 }

 return 0;
}
