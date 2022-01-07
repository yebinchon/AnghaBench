
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f71882fg_data {scalar_t__ type; int temp_config; int* temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 scalar_t__ f71858fg ;
 struct f71882fg_data* f71882fg_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_temp(struct device *dev, struct device_attribute *devattr,
 char *buf)
{
 struct f71882fg_data *data = f71882fg_update_device(dev);
 int nr = to_sensor_dev_attr_2(devattr)->index;
 int sign, temp;

 if (data->type == f71858fg) {

  if (data->temp_config & 1) {
   sign = data->temp[nr] & 0x0001;
   temp = (data->temp[nr] >> 5) & 0x7ff;
  } else {
   sign = data->temp[nr] & 0x8000;
   temp = (data->temp[nr] >> 5) & 0x3ff;
  }
  temp *= 125;
  if (sign)
   temp -= 128000;
 } else
  temp = data->temp[nr] * 1000;

 return sprintf(buf, "%d\n", temp);
}
