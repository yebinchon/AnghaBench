
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sis5595_data {int alarms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 struct sis5595_data* sis5595_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_alarm(struct device *dev, struct device_attribute *da,
     char *buf)
{
 struct sis5595_data *data = sis5595_update_device(dev);
 int nr = to_sensor_dev_attr(da)->index;
 return sprintf(buf, "%u\n", (data->alarms >> nr) & 1);
}
