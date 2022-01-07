
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1025_data {int * in_max; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int IN_FROM_REG (int ,int ) ;
 struct adm1025_data* adm1025_update_device (struct device*) ;
 int * in_scale ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
show_in_max(struct device *dev, struct device_attribute *attr, char *buf)
{
 int index = to_sensor_dev_attr(attr)->index;
 struct adm1025_data *data = adm1025_update_device(dev);
 return sprintf(buf, "%u\n", IN_FROM_REG(data->in_max[index],
         in_scale[index]));
}
