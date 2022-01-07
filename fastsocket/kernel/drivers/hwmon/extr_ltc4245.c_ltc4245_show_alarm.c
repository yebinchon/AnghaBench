
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sensor_device_attribute_2 {size_t index; int nr; } ;
struct ltc4245_data {int* cregs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct ltc4245_data* ltc4245_update_device (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t ltc4245_show_alarm(struct device *dev,
       struct device_attribute *da,
       char *buf)
{
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(da);
 struct ltc4245_data *data = ltc4245_update_device(dev);
 const u8 reg = data->cregs[attr->index];
 const u32 mask = attr->nr;

 return snprintf(buf, PAGE_SIZE, "%u\n", (reg & mask) ? 1 : 0);
}
