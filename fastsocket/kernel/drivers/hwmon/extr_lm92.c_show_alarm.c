
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm92_data {int temp1_input; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 struct lm92_data* lm92_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_alarm(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 int bitnr = to_sensor_dev_attr(attr)->index;
 struct lm92_data *data = lm92_update_device(dev);
 return sprintf(buf, "%d\n", (data->temp1_input >> bitnr) & 1);
}
