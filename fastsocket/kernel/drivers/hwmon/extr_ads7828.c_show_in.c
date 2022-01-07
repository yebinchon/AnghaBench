
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ads7828_data {int* adc_input; } ;
typedef int ssize_t ;


 int ads7828_lsb_resol ;
 struct ads7828_data* ads7828_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_in(struct device *dev, struct device_attribute *da,
 char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct ads7828_data *data = ads7828_update_device(dev);

 return sprintf(buf, "%d\n", (data->adc_input[attr->index] *
  ads7828_lsb_resol)/1000);
}
