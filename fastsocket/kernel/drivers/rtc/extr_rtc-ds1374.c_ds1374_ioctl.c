
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct ds1374 {int mutex; } ;
struct device {int dummy; } ;


 int DS1374_REG_CR ;
 int DS1374_REG_CR_AIE ;
 int DS1374_REG_CR_WACE ;
 int DS1374_REG_CR_WDALM ;
 int ENOIOCTLCMD ;


 struct ds1374* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int ds1374_ioctl(struct device *dev, unsigned int cmd, unsigned long arg)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct ds1374 *ds1374 = i2c_get_clientdata(client);
 int ret = -ENOIOCTLCMD;

 mutex_lock(&ds1374->mutex);

 switch (cmd) {
 case 129:
  ret = i2c_smbus_read_byte_data(client, DS1374_REG_CR);
  if (ret < 0)
   goto out;

  ret &= ~DS1374_REG_CR_WACE;

  ret = i2c_smbus_write_byte_data(client, DS1374_REG_CR, ret);
  if (ret < 0)
   goto out;

  break;

 case 128:
  ret = i2c_smbus_read_byte_data(client, DS1374_REG_CR);
  if (ret < 0)
   goto out;

  ret |= DS1374_REG_CR_WACE | DS1374_REG_CR_AIE;
  ret &= ~DS1374_REG_CR_WDALM;

  ret = i2c_smbus_write_byte_data(client, DS1374_REG_CR, ret);
  if (ret < 0)
   goto out;

  break;
 }

out:
 mutex_unlock(&ds1374->mutex);
 return ret;
}
