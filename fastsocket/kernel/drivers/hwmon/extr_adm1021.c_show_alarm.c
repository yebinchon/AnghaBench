
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1021_data {int alarms; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 struct adm1021_data* adm1021_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_alarm(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 int index = to_sensor_dev_attr(attr)->index;
 struct adm1021_data *data = adm1021_update_device(dev);
 return sprintf(buf, "%u\n", (data->alarms >> index) & 1);
}
