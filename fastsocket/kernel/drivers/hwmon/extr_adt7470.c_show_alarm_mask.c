
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {int alarms_mask; } ;
typedef int ssize_t ;


 struct adt7470_data* adt7470_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_alarm_mask(struct device *dev,
      struct device_attribute *devattr,
      char *buf)
{
 struct adt7470_data *data = adt7470_update_device(dev);

 return sprintf(buf, "%x\n", data->alarms_mask);
}
