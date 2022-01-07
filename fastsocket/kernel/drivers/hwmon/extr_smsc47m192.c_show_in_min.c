
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc47m192_data {int * in_min; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int IN_FROM_REG (int ,int) ;
 struct smsc47m192_data* smsc47m192_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_in_min(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 struct smsc47m192_data *data = smsc47m192_update_device(dev);
 return sprintf(buf, "%d\n", IN_FROM_REG(data->in_min[nr], nr));
}
