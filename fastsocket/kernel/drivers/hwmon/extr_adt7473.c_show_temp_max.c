
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7473_data {int * temp_max; int temp_twos_complement; } ;
typedef int ssize_t ;


 struct adt7473_data* adt7473_update_device (struct device*) ;
 int decode_temp (int ,int ) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_temp_max(struct device *dev,
        struct device_attribute *devattr,
        char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct adt7473_data *data = adt7473_update_device(dev);
 return sprintf(buf, "%d\n", 1000 * decode_temp(
      data->temp_twos_complement,
      data->temp_max[attr->index]));
}
