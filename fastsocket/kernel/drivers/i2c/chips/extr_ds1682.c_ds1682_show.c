
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ __le32 ;


 int EIO ;
 int dev_dbg (struct device*,char*,int ) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int ,int,int *) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 int sprintf (char*,char*,long) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t ds1682_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct i2c_client *client = to_i2c_client(dev);
 __le32 val = 0;
 int rc;

 dev_dbg(dev, "ds1682_show() called on %s\n", attr->attr.name);


 rc = i2c_smbus_read_i2c_block_data(client, sattr->index, sattr->nr,
        (u8 *) & val);
 if (rc < 0)
  return -EIO;



 if (sattr->nr == 4)
  return sprintf(buf, "%llu\n",
   ((unsigned long long)le32_to_cpu(val)) * 250);


 return sprintf(buf, "%li\n", (long)le32_to_cpu(val));
}
