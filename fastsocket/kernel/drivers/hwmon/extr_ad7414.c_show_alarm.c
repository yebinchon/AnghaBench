
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7414_data {int temp_input; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 struct ad7414_data* ad7414_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_alarm(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 int bitnr = to_sensor_dev_attr(attr)->index;
 struct ad7414_data *data = ad7414_update_device(dev);
 int value = (data->temp_input >> bitnr) & 1;
 return sprintf(buf, "%d\n", value);
}
