
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f71882fg_data {int** pwm_auto_point_temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; int nr; } ;


 struct f71882fg_data* f71882fg_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_pwm_auto_point_temp(struct device *dev,
     struct device_attribute *devattr,
     char *buf)
{
 int result;
 struct f71882fg_data *data = f71882fg_update_device(dev);
 int pwm = to_sensor_dev_attr_2(devattr)->index;
 int point = to_sensor_dev_attr_2(devattr)->nr;

 result = data->pwm_auto_point_temp[pwm][point];
 return sprintf(buf, "%d\n", 1000 * result);
}
