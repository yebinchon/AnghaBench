
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf8591_data {unsigned int aout; int control; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct pcf8591_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,unsigned int) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_out0_output(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 unsigned int value;
 struct i2c_client *client = to_i2c_client(dev);
 struct pcf8591_data *data = i2c_get_clientdata(client);
 if ((value = (simple_strtoul(buf, ((void*)0), 10) + 5) / 10) <= 255) {
  data->aout = value;
  i2c_smbus_write_byte_data(client, data->control, data->aout);
  return count;
 }
 return -EINVAL;
}
