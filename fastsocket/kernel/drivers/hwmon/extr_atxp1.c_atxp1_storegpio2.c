
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int gpio2; } ;
struct atxp1_data {scalar_t__ valid; TYPE_1__ reg; } ;
typedef size_t ssize_t ;


 int ATXP1_GPIO2 ;
 struct atxp1_data* atxp1_update_device (struct device*) ;
 int dev_info (struct device*,char*,unsigned int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,unsigned int) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t atxp1_storegpio2(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 struct atxp1_data *data;
 struct i2c_client *client;
 unsigned int value;

 client = to_i2c_client(dev);
 data = atxp1_update_device(dev);

 value = simple_strtoul(buf, ((void*)0), 16) & 0xff;

 if (value != data->reg.gpio2) {
  dev_info(dev, "Writing 0x%x to GPIO1.\n", value);

  i2c_smbus_write_byte_data(client, ATXP1_GPIO2, value);

  data->valid = 0;
 }

 return count;
}
