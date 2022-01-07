
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int ADM9240_REG_CHASSIS_CLEAR ;
 int dev_dbg (int *,char*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 unsigned long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t chassis_clear(struct device *dev,
  struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 unsigned long val = simple_strtol(buf, ((void*)0), 10);

 if (val == 1) {
  i2c_smbus_write_byte_data(client,
    ADM9240_REG_CHASSIS_CLEAR, 0x80);
  dev_dbg(&client->dev, "chassis intrusion latch cleared\n");
 }
 return count;
}
