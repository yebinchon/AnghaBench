
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pc87360_data {int* in_status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {unsigned int index; } ;


 int CHAN_ALM_MIN ;
 struct pc87360_data* pc87360_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_therm_min_alarm(struct device *dev,
    struct device_attribute *devattr, char *buf)
{
 struct pc87360_data *data = pc87360_update_device(dev);
 unsigned nr = to_sensor_dev_attr(devattr)->index;

 return sprintf(buf, "%u\n", !!(data->in_status[nr] & CHAN_ALM_MIN));
}
