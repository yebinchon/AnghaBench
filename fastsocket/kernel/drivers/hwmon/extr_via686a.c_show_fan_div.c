
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via686a_data {int * fan_div; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_FROM_REG (int ) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 struct via686a_data* via686a_update_device (struct device*) ;

__attribute__((used)) static ssize_t show_fan_div(struct device *dev, struct device_attribute *da,
  char *buf) {
 struct via686a_data *data = via686a_update_device(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 int nr = attr->index;
 return sprintf(buf, "%d\n", DIV_FROM_REG(data->fan_div[nr]) );
}
