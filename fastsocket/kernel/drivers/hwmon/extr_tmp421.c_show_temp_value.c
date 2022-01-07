
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmp421_data {int config; int update_lock; int * temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int TMP421_CONFIG_RANGE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 int temp_from_s16 (int ) ;
 int temp_from_u16 (int ) ;
 struct tmp421_data* tmp421_update_device (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_temp_value(struct device *dev,
          struct device_attribute *devattr, char *buf)
{
 int index = to_sensor_dev_attr(devattr)->index;
 struct tmp421_data *data = tmp421_update_device(dev);
 int temp;

 mutex_lock(&data->update_lock);
 if (data->config & TMP421_CONFIG_RANGE)
  temp = temp_from_u16(data->temp[index]);
 else
  temp = temp_from_s16(data->temp[index]);
 mutex_unlock(&data->update_lock);

 return sprintf(buf, "%d\n", temp);
}
