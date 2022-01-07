
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmp401_data {int status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int sprintf (char*,char*) ;
 struct tmp401_data* tmp401_update_device (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_status(struct device *dev,
 struct device_attribute *devattr, char *buf)
{
 int mask = to_sensor_dev_attr(devattr)->index;
 struct tmp401_data *data = tmp401_update_device(dev);

 if (data->status & mask)
  return sprintf(buf, "1\n");
 else
  return sprintf(buf, "0\n");
}
