
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {int * fan; } ;
typedef int ssize_t ;


 int FAN_DATA_VALID (int ) ;
 int FAN_PERIOD_TO_RPM (int ) ;
 struct adt7462_data* adt7462_update_device (struct device*) ;
 int fan_enabled (struct adt7462_data*,size_t) ;
 int sprintf (char*,char*,...) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_fan(struct device *dev, struct device_attribute *devattr,
   char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct adt7462_data *data = adt7462_update_device(dev);

 if (!fan_enabled(data, attr->index) ||
     !FAN_DATA_VALID(data->fan[attr->index]))
  return sprintf(buf, "0\n");

 return sprintf(buf, "%d\n",
         FAN_PERIOD_TO_RPM(data->fan[attr->index]));
}
